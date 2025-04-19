library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity provalab2 is
    Port (
        clk           : in  std_logic;
        resetn        : in  std_logic;

        m_axis_tvalid : out std_logic;
        m_axis_tdata  : out std_logic_vector(7 downto 0);
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic; 

        s_axis_tvalid : in  std_logic;
        s_axis_tdata  : in  std_logic_vector(7 downto 0);
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic
    );
end provalab2;

architecture Behavioral of provalab2 is
    type state_type is (rosso, verde, blu,calcolagrigio ,mandaregrigio);
    signal state     : state_type := rosso;

      signal r, g, b   : unsigned(7 downto 0);
      signal finepac : std_logic := '0';
--    signal,graysig   : unsigned(7 downto 0);
--    signal media1 : unsigned(9 downto 0);
--    signal media2 : unsigned(16 downto 0);
--    signal media3 : unsigned(8 downto 0);
begin
--    somma1 <= resize(r,10)+resize(g,10)+resize(b,10);
--    somma2<=media1 * "1010101"; 
--    somma3<= media2(16 downto 8); 
--    graysig<= media3(7 downto 0);
    process(clk)
    
    variable grayvar   : unsigned(7 downto 0);
    variable media1 : unsigned(9 downto 0);
    variable media2 : unsigned(16 downto 0);
    variable media3 : unsigned(8 downto 0);
    begin
        if rising_edge(clk) then
            if resetn = '0' then 
                state <= rosso;
                m_axis_tvalid <= '0';
                m_axis_tdata  <= (others => '0');
                m_axis_tlast  <= '0';
                s_axis_tready <= '1';
                r <= (others => '0');
                g <= (others => '0');
                b <= (others => '0');
            else
                if state /= mandaregrigio then
                    m_axis_tvalid <= '0';
                end if;
                case state is
                    when rosso =>
                        if s_axis_tvalid = '1' then
                            r <= unsigned(s_axis_tdata);
                            state <= verde;
                        end if;

                    when verde =>
                        if s_axis_tvalid = '1' then
                            g <= unsigned(s_axis_tdata);
                            state <= blu;
                        end if;

                    when blu =>
                        if s_axis_tvalid = '1' then
                            b <= unsigned(s_axis_tdata);
                            finepac <= s_axis_tlast;
                            s_axis_tready <= '0';
                            state <= calcolagrigio;
                        end if;
                    when calcolagrigio =>
                        media1 := resize(r,10)+resize(g,10)+resize(b,10);
                        media2 := media1 * "1010101"; 
                        media3 :=media2(16 downto 8);
                        grayvar := media3(7 downto 0);
                         
                        m_axis_tdata<= std_logic_vector(grayvar);
                        m_axis_tvalid<='1';
                        m_axis_tlast <= finepac;
                        state<=mandaregrigio;
                    when mandaregrigio =>                       
                        if m_axis_tready = '1' then
                            m_axis_tvalid <= '0';
                            s_axis_tready <= '1';
                            state <= rosso;
                        end if;

                    when others =>
                        state <= rosso;
                end case;
            end if;
        end if;
    end process;
end Behavioral;
