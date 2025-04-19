
-- second new edition 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity bram_writer is
    generic(
        ADDR_WIDTH: POSITIVE :=16
    );
    port (
        clk   : in std_logic;
        aresetn : in std_logic;

        s_axis_tdata : in std_logic_vector(7 downto 0);
        s_axis_tvalid : in std_logic; 
        s_axis_tready : out std_logic; 
        s_axis_tlast : in std_logic;

        conv_addr: in std_logic_vector(ADDR_WIDTH-1 downto 0);
        conv_data: out std_logic_vector(6 downto 0);

        start_conv: out std_logic;
        done_conv: in std_logic;

        write_ok : out std_logic;
        overflow : out std_logic;
        underflow: out std_logic

    );
end entity bram_writer;

architecture rtl of bram_writer is

    component bram_controller is
        generic (
            ADDR_WIDTH: POSITIVE :=16
        );
        port (
            clk   : in std_logic;
            aresetn : in std_logic; 
            addr: in std_logic_vector(ADDR_WIDTH-1 downto 0);
            dout: out std_logic_vector(7 downto 0);
            din: in std_logic_vector(7 downto 0);
            we: in std_logic
        );
    end component;
    
    constant addr_one: unsigned(ADDR_WIDTH-1 downto 0):=(others=>'1');
    
    --signal controller
    signal addr: unsigned(ADDR_WIDTH-1 downto 0):=(others=>'0');
    signal din : std_logic_vector(7 downto 0):=(others=>'0');
    signal we: std_logic:='0';
    signal dout: std_logic_vector(7 downto 0);

    --auxiliary signals
    signal tlast_reg : std_logic :='0';
    
    --output registrati
    signal tready_reg: std_logic :='1';
    signal start_conv_reg: std_logic :='0';

    type state_type is (RESET, IDLE, WRITE, ADDRUP, START_READ, READ);
	signal state, nextState : state_type := RESET;

begin

    s_axis_tready<=tready_reg;
    start_conv<=start_conv_reg;
    --conv_data<=dout(6 downto 0);

    bram_controller_inst: bram_controller 
    port map(
        clk=>clk,
        aresetn=>aresetn,
        addr=>std_logic_vector(addr),
        dout=>dout,
        din=>din,
        we=>we
    );

    synchronousLogic : process (aresetn, clk)
	begin
		if aresetn = '0' then
			state <= RESET;
		elsif rising_edge(clk) then
			state <= nextState;
		end if;
	end process;

    nextStateLogic : process (state, s_axis_tvalid, tready_reg, tlast_reg, addr, done_conv)
	begin

		case (state) is

			when RESET =>
				nextState <= IDLE;

			when IDLE =>
                nextState <=IDLE;
                if s_axis_tvalid='1' and tready_reg='1' then 
                    nextState <= WRITE;   
                end if;

			when WRITE =>
                nextState<=ADDRUP;
                if tlast_reg='1' or addr=addr_one then 
                    nextState<=START_READ;
                end if;

			when ADDRUP =>
                nextState<=IDLE;

			when START_READ =>
				nextState <= READ;

			when READ =>
                nextState<=READ;
                if done_conv='1' then
				    nextState <= RESET;
                end if;
		end case;

	end process;

	
	outputLogic : process (state, conv_addr, dout)
	begin

		case (state) is

			when RESET =>
                tready_reg<='1';
                we<='0';
                start_conv_reg<='0';
                addr<=(others=>'0');
                conv_data<=(others=>'0');

			when IDLE =>
				--tready_reg<='1';

			when WRITE =>
                --tready_reg<='0';
                we<='1';

			when ADDRUP=>
				we<='0';
				addr<=addr+1;
     
			when START_READ =>
			    tready_reg<='0';
                we<='0';
                start_conv_reg<='1';

			when READ =>
				start_conv_reg<= '0';
                addr<=unsigned(conv_addr);
                conv_data<=dout(6 downto 0);

		end case;

	end process;
    
    write_okprocess : process (clk, aresetn)
    begin
        if aresetn = '0' then
            overflow <= '0';
            underflow <= '0';
            write_ok <= '0';
        elsif rising_edge(clk) then
            if state = START_READ then
                if tlast_reg = '0' and addr = addr_one then
                    overflow <= '1';
                elsif tlast_reg = '1' and addr /= addr_one then
                    underflow <= '1';
                else
                    write_ok<= '1';
                end if;
            else 
                write_ok<='0';
                underflow<='0';
                overflow<='0';
            end if;
        end if;
    end process;


    idle_process: process (aresetn,clk)
    begin 
        if aresetn='0' then
            tlast_reg<='0';
            din<=(others=>'0');
        elsif rising_edge(clk) then
            if state=IDLE then
                tlast_reg<=s_axis_tlast;
                din<=s_axis_tdata; 
            elsif state=RESET then
                tlast_reg<='0';
                din<=(others=>'0'); 
            end if;
        end if;
    end process;



end architecture;
