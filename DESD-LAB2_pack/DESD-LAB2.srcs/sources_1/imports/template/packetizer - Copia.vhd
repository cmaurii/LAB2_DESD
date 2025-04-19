library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity packetizer is
    generic (
        HEADER : INTEGER := 16#FF#;
        FOOTER : INTEGER := 16#F1#
    );
    port (
        clk           : in  std_logic;
        aresetn       : in  std_logic; -- active low reset

        s_axis_tdata  : in  std_logic_vector(7 downto 0);
        s_axis_tvalid : in  std_logic; 
        s_axis_tready : out std_logic; 
        s_axis_tlast  : in  std_logic;

        m_axis_tdata  : out std_logic_vector(7 downto 0);
        m_axis_tvalid : out std_logic; 
        m_axis_tready : in  std_logic
    );
end entity;

architecture rtl of packetizer is

    type state_type is (IDLE, SEND_HEADER, RECEIVE, SEND, SEND_FOOTER);
    signal state : state_type := IDLE;

    signal data_buffer   : std_logic_vector(7 downto 0); --Buffer to store the data
    signal last_buffered : std_logic := '0'; --Buffer to store the tlast that arrives with the last data of the packet
    
    signal m_axis_tdata_int  : std_logic_vector(7 downto 0); --Internal signal to read the out port
    signal m_axis_tvalid_int : std_logic := '0'; --Internal signal to read the out port

begin
    -- Assign outputs
    m_axis_tdata  <= m_axis_tdata_int;
    m_axis_tvalid <= m_axis_tvalid_int;
    s_axis_tready <= '1' when state = RECEIVE else '0'; --As a slave I'm ready to receive ONLY IF I'm in receive state

    process(clk, aresetn)
    begin
        if aresetn = '0' then
            state <= IDLE;
            m_axis_tvalid_int <= '0';
            m_axis_tdata_int  <= (others => '0');
            data_buffer       <= (others => '0');
            last_buffered     <= '0'; --we haven't received yet the tlast

        elsif rising_edge(clk) then
            case state is

                when IDLE =>
                    -- Go to SEND_HEADER only when the header can be sent (m_tready ->1) and we're starting to receive data which are valid
                    -- If there wasn't the check on the tvalid an header would have been added also at the end of the packet
                    if m_axis_tready = '1' and s_axis_tvalid = '1' then
                        m_axis_tdata_int  <= std_logic_vector(to_unsigned(HEADER, 8));
                        m_axis_tvalid_int <= '1';
                        state <= SEND_HEADER;
                    end if;

                when SEND_HEADER =>
                --Let's check if the handshake has been done properly, only after that we're ready to receive the data flow
                    if m_axis_tvalid_int = '1' and m_axis_tready = '1' then
                        m_axis_tvalid_int <= '0'; --After having sent the header the output won't be anymore valid
                        state <= RECEIVE;
                    end if;

                when RECEIVE =>
                --we can receive the data : s_axis_tready is 1 only in this state!
                    if s_axis_tvalid = '1' then
                        data_buffer   <= s_axis_tdata; --buffer of the data
                        last_buffered <= s_axis_tlast; --buffer of the tlast to keep synchronized the data and the tlast
                        state <= SEND;
                    end if;

                when SEND =>
              
                    --with this, we check if the bus is free of data --> no risk of loosing any data
                    --the sent data have already been received by the next module (see line 87)
                    if m_axis_tvalid_int = '0' then 
                        m_axis_tdata_int  <= data_buffer;
                        m_axis_tvalid_int <= '1'; --The data is valid
                        
                    --The state is the same until the correct handshake is happened 
                    elsif m_axis_tvalid_int = '1' and m_axis_tready = '1' then
                        m_axis_tvalid_int <= '0'; --we change the tvalid only if we have already received tready --> the data is already been read

                        --Next state is defined on whatever I have already received the tlast or not
                        --The state is changed only if the master has already received the data in the buffer
                        if last_buffered = '1' then
                            state <= SEND_FOOTER;
                        else
                            state <= RECEIVE;
                        end if;
                    end if;

                when SEND_FOOTER =>
                --We reach this state only after having received the tlast
                
                    --With this, as before, we check if the bus is free of data--> no risk of loosing any data
                    if m_axis_tvalid_int = '0' then
                        m_axis_tdata_int  <= std_logic_vector(to_unsigned(FOOTER, 8));
                        m_axis_tvalid_int <= '1';
                    
                    --The state is the same until the correct handshake is happened 
                    elsif m_axis_tvalid_int = '1' and m_axis_tready = '1' then
                        m_axis_tvalid_int <= '0';
                        state <= IDLE;
                    end if;
            end case;
        end if;
    end process;

end architecture rtl;