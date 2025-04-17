library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_packetizer is
end entity tb_packetizer;

architecture behavior of tb_packetizer is
    component packetizer is
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
            s_axis_tlast : in std_logic;
            m_axis_tdata : out std_logic_vector(7 downto 0);
            m_axis_tvalid : out std_logic;
            m_axis_tready : in std_logic
        );
    end component;

    -- Clock and reset
    signal clk : std_logic := '0';
    signal aresetn : std_logic := '0';

    -- AXIS Slave Interface (Input)
    signal s_axis_tdata  : std_logic_vector(7 downto 0) := (others => '0');
    signal s_axis_tvalid : std_logic := '0';
    signal s_axis_tready : std_logic;
    signal s_axis_tlast  : std_logic := '0';

    -- AXIS Master Interface (Output)
    signal m_axis_tdata  : std_logic_vector(7 downto 0);
    signal m_axis_tvalid : std_logic;
    signal m_axis_tready : std_logic := '1';

    constant clk_period : time := 10 ns;
    constant time_on : time := 70 ns;
    constant time_off : time := 30 ns;

begin
    -- UUT
    uut: packetizer
        port map (
            clk => clk,
            aresetn => aresetn,
            s_axis_tdata => s_axis_tdata,
            s_axis_tvalid => s_axis_tvalid,
            s_axis_tready => s_axis_tready,
            s_axis_tlast => s_axis_tlast,
            m_axis_tdata => m_axis_tdata,
            m_axis_tvalid => m_axis_tvalid,
            m_axis_tready => m_axis_tready
        );

    -- Clock generator
    clk_process: process
    begin
        while true loop
            clk <= '0'; wait for clk_period / 2;
            clk <= '1'; wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stimulus: process
        type data_array is array(natural range <>) of std_logic_vector(7 downto 0);
        procedure send_packet(signal clk : in std_logic;
                              signal s_axis_tdata : out std_logic_vector(7 downto 0);
                              signal s_axis_tvalid : out std_logic;
                              signal s_axis_tlast : out std_logic;
                              signal s_axis_tready : in std_logic;
                              data : in data_array) is
        begin
            for i in data'range loop
                s_axis_tdata <= data(i);
                s_axis_tvalid <= '1';
                if i = data'high then
                    s_axis_tlast <= '1';
                else
                    s_axis_tlast <= '0';
                end if;

                -- Wait until ready is high (AXIS rule)
                wait until rising_edge(clk) and s_axis_tready = '1';

                -- Deassert tvalid and tlast after data is accepted
                s_axis_tvalid <= '0';
                s_axis_tlast <= '0';

                -- Wait a cycle before next word
                wait for clk_period;
            end loop;
        end procedure;
    begin
        -- Reset
        aresetn <= '0';
        wait for 30 ns;
        aresetn <= '1';
        wait for 50 ns;

        -- First packet (3 bytes)
        send_packet(clk, s_axis_tdata, s_axis_tvalid, s_axis_tlast, s_axis_tready,
                    (x"01", x"02", x"03"));

        wait for 100 ns;

        -- Second packet (2 bytes)
        send_packet(clk, s_axis_tdata, s_axis_tvalid, s_axis_tlast, s_axis_tready,
                    (x"10", x"11"));

        wait for 100 ns;

        -- Third packet (4 bytes)
        send_packet(clk, s_axis_tdata, s_axis_tvalid, s_axis_tlast, s_axis_tready,
                    (x"20", x"21", x"22", x"23"));

        wait for 200 ns;

        report "SIMULATION END" severity note;
        wait;
    end process;

    -- Varying m_axis_tready
    m_axis_tready_process: process
    begin
        while true loop
            m_axis_tready <= '1';
            wait for time_on;
            m_axis_tready <= '0';
            wait for time_off;
        end loop;
    end process;

end architecture behavior;