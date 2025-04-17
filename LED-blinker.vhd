library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity led_blinker is
    generic (
        CLK_PERIOD_NS: POSITIVE :=10;
        BLINK_PERIOD_MS : POSITIVE :=1000;
        N_BLINKS : POSITIVE := 4
    );
    port (
        clk   : in std_logic;
        aresetn : in std_logic;
        start_blink : in std_logic;
        led: out std_logic
    );
end entity led_blinker;

architecture rtl of led_blinker is

    signal counter : integer := '0';
  
begin

    process(clk, aresetn)
        if aresetn = '0' then
            led <= '0';
        elsif rising_edge(clk) then
            if start_blink = '1' then 
                for counter < N_BLINKS loop
                    led <= '1';
                    wait for BLINK_PERIOD_MS;
                    led <= '0';
                    wait for BLINK_PERIOD_MS;
                    counter <= counter + 1; 
                end loop;
            end if;
        end if;
    end process;

end architecture rtl;