library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity depacketizer is
    generic (
        HEADER: INTEGER := 16#FF#;
        FOOTER: INTEGER := 16#F1#
    );
    port (
        clk   : in std_logic;
        aresetn : in std_logic; 

        s_axis_tdata : in std_logic_vector(7 downto 0);
        s_axis_tvalid : in std_logic; 
        s_axis_tready : out std_logic; 

        m_axis_tdata : out std_logic_vector(7 downto 0);
        m_axis_tvalid : out std_logic; 
        m_axis_tready : in std_logic; 
        m_axis_tlast : out std_logic
    );
end entity depacketizer;

architecture rtl of depacketizer is
    -- FSM states
    type state_type is (IDLE, RECEIVE_DATA, SEND_DATA); 
    signal state : state_type := IDLE; -- Initial state is IDLE

    -- Signals
    signal m_axis_tvalid_int : std_logic; -- Internal signal to read the output port
    signal s_axis_tready_int : std_logic; -- Internal signal to read the output port
    signal data_buffer : std_logic_vector(7 downto 0); -- Temporary buffer to store previous byte
    signal next_image : std_logic := '0'; -- When set to 1 it is the beginning of a new image 
    -- (next_image is needed to avoid that tlast gets to 0 while we are processing the header of a new image, 
    -- therefore last byte of the old image could have been read as first data byte of the new image. 
    -- That would have been true assuming no reset between the two images)

begin
    m_axis_tvalid <= m_axis_tvalid_int;
    s_axis_tready <= s_axis_tready_int;

    process (clk, aresetn)
    begin
        if aresetn = '0' then
            -- During reset, refuse incoming data, clear tlast and data buffer
            m_axis_tvalid_int <= '0';
            m_axis_tlast <= '0';
            s_axis_tready_int <= '0';
            data_buffer <= (others => '0'); 
            state <= IDLE; -- Reset to IDLE state
            next_image <= '0'; -- Process as first image

        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    -- In IDLE state, we are waiting for the data to arrive
                    s_axis_tready_int <= '0'; -- Still not ready to receive data
                    m_axis_tvalid_int <= '0'; -- Still don't have valid data to send

                    if s_axis_tvalid = '1' then
                        -- When handshake at depack slave interface => start receiving data
                        state <= RECEIVE_DATA;
                    end if;

                when RECEIVE_DATA =>
                    -- In RECEIVE_DATA state, wait for data and then process it
                    s_axis_tready_int <= '1'; -- Ready to accept data

                    -- Accept data only if valid
                    if s_axis_tvalid = '1' then
                        if next_image = '1' then  
                                m_axis_tlast <= '1'; 
                        end if; 
                        
                        -- Check for header, ignore it
                        if s_axis_tdata = std_logic_vector(to_unsigned(HEADER, 8)) then
                            m_axis_tvalid_int <= '0'; -- Don't send any data yet                   
                            state <= IDLE;
                        -- Check for footer, set tlast and output the previous byte
                        elsif s_axis_tdata = std_logic_vector(to_unsigned(FOOTER, 8)) then
                            m_axis_tlast <= '1';
                            m_axis_tvalid_int <= '0';
                            state <= IDLE; 
                        -- Otherwise, store the valid data in the buffer
                        else                           
                        -- When handshake at depack master interface => start sending data
                                data_buffer <= s_axis_tdata;
                                state <= SEND_DATA; 
                            
                        end if;
                    end if;

                when SEND_DATA =>
                    s_axis_tready_int <= '0'; -- While sending data, not ready to receive more

                        -- In SEND_DATA state, send the buffered data byte to the next module
                        if m_axis_tvalid = '0' then
                            m_axis_tlast <= '0'; -- Tlast set to 0 for first data byte of the new image  
                            next_image <= '0'; -- From now on new image can be processed as the first image
                            m_axis_tdata <= data_buffer; 
                            m_axis_tvalid_int <= '1'; -- Ready to send data                             
                            -- Check if this is the last data
                            if s_axis_tdata = std_logic_vector(to_unsigned(FOOTER, 8)) then
                                m_axis_tlast <= '1';  
                                next_image <= '1'; -- New image could be processed 
                                state <= IDLE;
                            end if;  
                        elsif m_axis_tvalid = '1' and m_axis_tready ='1' then 
                            m_axis_tvalid = '0';
                            state <= IDLE; -- To always check handshake
                        end if;
            end case;
        end if;
    end process;

end architecture rtl;