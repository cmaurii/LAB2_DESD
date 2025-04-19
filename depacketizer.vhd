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
    signal data : std_logic := '0'; -- Sort of a pointer indicates me if we are reading the next byte
    signal data_buffer1 : std_logic_vector(7 downto 0); -- Temporary buffer to store previous byte
    signal data_buffer2 : std_logic_vector(7 downto 0); -- Temporary buffer to store previous byte
    
begin
    m_axis_tvalid <= m_axis_tvalid_int;
    s_axis_tready <= '1' when state = RECEIVE_DATA else '0'; --Ready to receive ONLY IF in receive state
    
    process (clk, aresetn)
    begin
        if aresetn = '0' then
            -- During reset refuse to receive/send data, clear all signals
            m_axis_tvalid_int <= '0';
            m_axis_tlast <= '0';
            data_buffer1 <= (others => '0');
            data_buffer2 <= (others => '0'); 
            state <= IDLE; -- Reset to IDLE state
            data <= '0';
    
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    -- In IDLE state, we are waiting for the data to arrive
                    m_axis_tvalid_int <= '0'; -- Still don't have valid data to send
    
                    if s_axis_tvalid = '1' then
                        -- When handshake at depack slave interface => start receiving data
                        state <= RECEIVE_DATA;
                    end if;                  
    
                when RECEIVE_DATA =>
                    -- In RECEIVE_DATA state, wait for data and then process it
                    if s_axis_tvalid = '1' then
                        -- Check for header, ignore it
                        if s_axis_tdata = std_logic_vector(to_unsigned(HEADER, 8)) then
                            m_axis_tvalid_int <= '0'; -- Don't send any data yet
                            data <= '0';                   
                            state <= IDLE;
    
                        -- Check for footer
                        elsif s_axis_tdata = std_logic_vector(to_unsigned(FOOTER, 8)) then
                            m_axis_tvalid_int <= '0';
                            if data = '0' then
                                state <= IDLE; -- Usefull only if the package is made up just of HD and FT
                            elsif data = '1' then                       
                                state <= SEND_DATA; -- To send last data byte
                            end if;
    
                        -- Otherwise, store the valid data in the buffer
                        else                            
                            if data = '0' then
                                data_buffer1 <= s_axis_tdata;                                 
                                data <= '1';                                
                                state <= IDLE; -- Before sanding the data check if the next one is a FT
                            elsif data = '1' then 
                                data_buffer2 <= s_axis_tdata; 
                                state <= SEND_DATA;
                            end if;
                        end if;
                    end if;
    
                when SEND_DATA =>
                    -- In SEND_DATA state, send the buffered data byte to the next module
                    if m_axis_tvalid_int = '0' then

                        m_axis_tdata <= data_buffer1;
                        data_buffer1 <= data_buffer2;
                        data_buffer2 <= s_axis_tdata;
                        data <= '1';
                                         
                        m_axis_tvalid_int <= '1'; -- Ready to send data
    
                    elsif m_axis_tvalid_int = '1' and m_axis_tready = '1' then
                        m_axis_tvalid_int <= '0'; -- Data sent, ready for next state
                        state <= IDLE;
    
                    end if;
                    
                    elsif s_axis_tdata = std_logic_vector(to_unsigned(FOOTER, 8)) then
                        m_axis_tlast <= '1';
                    else 
                        m_axis_tlast <= '0';
                    end if;                    
                    
            end case;
        end if;
    end process;

end architecture rtl;