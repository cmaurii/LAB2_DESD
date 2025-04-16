library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity depacketizer_tb is
end entity depacketizer_tb;

architecture sim of depacketizer_tb is
    -- Component declaration
    component depacketizer is
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
    end component;

    -- Signals for the DUT (Device Under Test)
    signal clk         : std_logic := '0';
    signal aresetn     : std_logic := '0';
    signal s_axis_tdata : std_logic_vector(7 downto 0) := (others => '0');
    signal s_axis_tvalid : std_logic := '0';
    signal s_axis_tready : std_logic;
    signal m_axis_tdata : std_logic_vector(7 downto 0);
    signal m_axis_tvalid : std_logic;
    signal m_axis_tready : std_logic := '1';
    signal m_axis_tlast : std_logic;

    -- Clock period
    constant clk_period : time := 10 ns;

begin
    -- Instantiate the DUT
    uut: depacketizer
        generic map (
            HEADER => 16#FF#,
            FOOTER => 16#F1#
        )
        port map (
            clk => clk,
            aresetn => aresetn,
            s_axis_tdata => s_axis_tdata,
            s_axis_tvalid => s_axis_tvalid,
            s_axis_tready => s_axis_tready,
            m_axis_tdata => m_axis_tdata,
            m_axis_tvalid => m_axis_tvalid,
            m_axis_tready => m_axis_tready,
            m_axis_tlast => m_axis_tlast
        );

    -- Clock generation
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

      -- Stimulus process
    stimulus: process
    begin
        -- Reset the DUT
        aresetn <= '0';
        wait for 20 ns;
        aresetn <= '1';
        wait for 20 ns;

        -- Send first packet
        -- Send HEADER
        s_axis_tdata <= std_logic_vector(to_unsigned(16#FF#, 8));
        s_axis_tvalid <= '1';
        wait until s_axis_tready = '1';
        wait for clk_period;

        -- Send valid data
        s_axis_tdata <= "00000001"; -- Example data
        wait until s_axis_tready = '1';
        wait for clk_period;

        s_axis_tdata <= "00000010"; -- Example data
        wait until s_axis_tready = '1';
        wait for clk_period;

        -- Send FOOTER
        s_axis_tdata <= std_logic_vector(to_unsigned(16#F1#, 8));
        wait until s_axis_tready = '1';
        wait for clk_period;

        -- Stop sending data for the first packet
        s_axis_tvalid <= '0';
        wait for 50 ns;

        -- Send second packet
        -- Send HEADER
        s_axis_tdata <= std_logic_vector(to_unsigned(16#FF#, 8));
        s_axis_tvalid <= '1';
        wait until s_axis_tready = '1';
        wait for clk_period;

        -- Send valid data
        s_axis_tdata <= "00000011"; -- Example data
        wait until s_axis_tready = '1';
        wait for clk_period;

        s_axis_tdata <= "00000100"; -- Example data
        wait until s_axis_tready = '1';
        wait for clk_period;

        -- Send FOOTER
        s_axis_tdata <= std_logic_vector(to_unsigned(16#F1#, 8));
        wait until s_axis_tready = '1';
        wait for clk_period;

        -- Stop sending data for the second packet
        s_axis_tvalid <= '0';
        wait for 50 ns;

        wait for 500 ns; 
        wait; -- End simulation
    end process;

end architecture sim;