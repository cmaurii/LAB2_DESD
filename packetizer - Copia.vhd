library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity packetizer is
    generic (
        HEADER: INTEGER := 16#FF#;
        FOOTER: INTEGER := 16#F1#
    );
    port (
        clk   : in std_logic;
        aresetn : in std_logic; -- active low reset

        s_axis_tdata : in std_logic_vector(7 downto 0);
        s_axis_tvalid : in std_logic; 
        s_axis_tready : out std_logic; 
        s_axis_tlast : in std_logic;

        m_axis_tdata : out std_logic_vector(7 downto 0);
        m_axis_tvalid : out std_logic; 
        m_axis_tready : in std_logic 
    );
end entity packetizer;

architecture rtl of packetizer is
    --FSM states
    type state_type is (IDLE, RECEIVE_DATA, SEND_DATA, SEND_FOOTER); 
    signal state : state_type := IDLE; --Initial state is IDLE

    --Signals
    signal m_axis_tvalid_int	: std_logic; --To read the out port
    signal s_axis_tready_int	: std_logic; --To read the out port

    signal data_buffer : std_logic_vector (7 downto 0); --to save temporarily the data

begin
    m_axis_tvalid <= m_axis_tvalid_int;
    s_axis_tready <= s_axis_tready_int;

    process (clk, aresetn)
    begin
        if aresetn = '0' then
            -- During resets refuse incoming data
            s_axis_tready_int <= '0'; --the interface is not ready to accept data
            m_axis_tvalid_int <= '0'; --the data in output is not valid
        
            -- Reset of the state : after every reset we start from a new image
            state <= IDLE;
            
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                --In IDLE we are at the beginning of the new image if we start receiving data which are valid
                --So, in these conditions, we want to send the header
                    s_axis_tready_int <= '0'; -- Still not ready to receive data
                    m_axis_tvalid_int <= '0'; -- Still don't have valid data to send
                    
                    --If we start to receive data which are valid and the master is ready, we send the header
                    if s_axis_tvalid = '1' and m_axis_tready = '1' then 
                        m_axis_tdata <= std_logic_vector(to_unsigned(HEADER, 8));
                        m_axis_tvalid_int <= '1';
                        if m_axis_tready = '1' then 
                            state <= RECEIVE_DATA; --We are ready to receive the data from the previous module
                            --If the master is not ready, we remain in IDLE because we want to send correctly the header
                        end if; 
                    end if; 
  

                when RECEIVE_DATA =>
                -- In RECEIVE_DATA state, we read the new data if it is valid and we buffer it
                    s_axis_tready_int <= '1'; --Ready to receive data
                    m_axis_tvalid_int <= '0'; --No data in output is valid

                    if s_axis_tvalid = '1' then
                        data_buffer <= s_axis_tdata; --Buffer the data
                        state <= SEND_DATA;
                    end if; 
                    
                when SEND_DATA =>
                    s_axis_tready_int <= '0';  -- I do not accept new data in this state
                    
                    if m_axis_tvalid_int = '0' then 
                        m_axis_tdata <= data_buffer;
                        m_axis_tvalid_int <= '1';
                    end if;
                
                    if m_axis_tvalid_int = '1' and m_axis_tready = '1' then
                        m_axis_tvalid_int <= '0';
                    end if; 

                    if s_axis_tlast = '1' then
                        state <= SEND_FOOTER;
                    else
                        state <= RECEIVE_DATA;
                    end if;

                when SEND_FOOTER =>
                    -- Send the footer once ready
                    if m_axis_tready = '1' then
                        m_axis_tdata <= std_logic_vector(to_unsigned(FOOTER, 8));
                        m_axis_tvalid_int <= '1'; 
                        state <= IDLE; --We move again to IDLE to wait for a new image
                    end if;
            end case;
        end if;
    end process;

end architecture rtl;
