library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity img_conv is
    generic(
        LOG2_N_COLS: POSITIVE := 8;
        LOG2_N_ROWS: POSITIVE := 8
    );
    port (

        clk   : in std_logic;
        aresetn : in std_logic;

        m_axis_tdata : out std_logic_vector(7 downto 0);
        m_axis_tvalid : out std_logic; 
        m_axis_tready : in std_logic; 
        m_axis_tlast : out std_logic;
        
        conv_addr: out std_logic_vector(LOG2_N_COLS+LOG2_N_ROWS-1 downto 0);
        conv_data: in std_logic_vector(6 downto 0);

        start_conv: in std_logic;
        done_conv: out std_logic
        
    );
end entity img_conv;

architecture rtl of img_conv is


    signal m_axis_tvalid_int : std_logic;
    type conv_mat_type is array(0 to 2, 0 to 2) of integer;
    constant conv_mat : conv_mat_type := ((-1,-1,-1),(-1,8,-1),(-1,-1,-1));
    signal is_data_to_send : std_logic := '0';
    signal raw : integer range -1 to 2 := 0;
    signal col : integer range -1 to 2 := 0;
    signal is_address_valid : std_logic := '0';	
    signal is_counter_enabled : std_logic := '0';
    signal is_pixel_valid : std_logic := '0';
    signal is_pixel_done : std_logic := '0';
    signal is_image_done : std_logic := '0';
    signal real_pixel_address : integer range 0 to ((2**LOG2_N_COLS) * (2**LOG2_N_COLS))-1 := 0;
    signal reset_sum : std_logic := '0';

    type state_type is (WAIT_START, CONVERTING, SEND_PIXEL, SEND_FINSHED);
    signal curr_state: state_type := WAIT_START; 
    
begin

    m_axis_tvalid <= m_axis_tvalid_int; 
    
    -- FSM
    process(clk, aresetn)
    begin
        if aresetn = '0' then
            reset_sum <= '0';
            done_conv <= '0';
            reset_sum <= '0';
            done_conv <= '0';
            m_axis_tlast <= '0';
            is_counter_enabled <= '0';
        elsif rising_edge(clk) then
            reset_sum <= '0';
            done_conv <= '0';
            m_axis_tlast <= '0';
    
            case curr_state is
                when WAIT_START =>
                    if start_conv = '1' then
                        is_counter_enabled <= '1';
                    end if;
                when CONVERTING =>
                    if is_pixel_done = '1' then
                    end if;
                when SEND_PIXEL =>
                    reset_sum <= '1';
                when SEND_FINSHED =>
                    done_conv <= '1';
                    reset_sum <= '1';
                    m_axis_tlast <= '1';
                    is_counter_enabled <= '0';
            end case;
        end if;
    end process;

    process(clk, aresetn)
    begin
        if aresetn = '0' then
            curr_state <= WAIT_START;
        elsif rising_edge(clk) then
            case curr_state is
                when WAIT_START =>
                    if start_conv = '1' then
                        curr_state <= CONVERTING;
                    end if;
                when CONVERTING =>
                    if is_pixel_done = '1' and is_image_done = '0' then
                        curr_state <= SEND_PIXEL;
                    elsif is_pixel_done = '1' and is_image_done = '1' then
                        curr_state <= SEND_FINSHED;
                    end if;
                when SEND_PIXEL =>
                  curr_state <= CONVERTING;
                when SEND_FINSHED =>
                    curr_state <= WAIT_START;
                end case;
        end if;
    end process;


    -- Offset counter
    process(clk, aresetn)
    variable skipClock: std_logic := '0';
    variable sendPixel: std_logic := '0';
    variable sendImage: std_logic := '0';
    begin
        if aresetn = '0' then
            is_pixel_done <= '0';
            is_image_done <= '0';
            col <= 0;
            raw <= 0;
            skipClock := '0';
            conv_addr <= (others => '0');
            real_pixel_address <= 0;
            sendPixel := '0';
            sendImage := '0';
            is_pixel_valid <= '0';
        elsif rising_edge(clk) then
            -- Reset Logic bit
            is_pixel_done <= '0';
            is_image_done <= '0';

            -- Counter Logic
            if  is_counter_enabled = '1' then
                if skipClock = '0' then
                    --Update the convolution matrix position
                    if col = 2 then
                        col <= 0;
                        if raw = 2 then
                            raw <= 0;
                            sendPixel := '1';
                            real_pixel_address <= real_pixel_address + 1;
                        else
                            raw <= raw + 1;
                        end if;
                    else
                        col <= col + 1;
                    end if;
    
                    -- Check if the new address is valid and set it
                    if ((real_pixel_address mod (2**LOG2_N_COLS)) + (col - 1) >= 0 and  ((real_pixel_address mod (2**LOG2_N_COLS)) + (col - 1) <= (2**LOG2_N_COLS - 1))) then
                        if((real_pixel_address / (2**LOG2_N_ROWS)) + (raw - 1) >= 0 and (real_pixel_address / (2**LOG2_N_ROWS) + (raw - 1) <= (2**LOG2_N_ROWS - 1))) then
                            is_pixel_valid <= '1';
                            conv_addr <= std_logic_vector(to_unsigned((real_pixel_address + (col - 1) + ((raw - 1) * (2**LOG2_N_COLS))), conv_addr'length));
                        else
                            is_pixel_valid <= '0';
                        end if;
                    else
                        is_pixel_valid <= '0';
                    end if;
    
                    -- Check if the image is done
                    if (real_pixel_address = (((2**LOG2_N_COLS) * (2**LOG2_N_COLS))-1)) and (raw = 2) and (col = 2) then
                        sendImage := '1';
                    end if;
                    skipClock := '1';
                else
                    if sendImage = '1' then
                        is_image_done <= '1';
                        sendImage := '0';
                     end if;
                     if sendPixel = '1' then
                        is_pixel_done <= '1';
                        sendPixel := '0';
                     end if;
                    skipClock := '0'; 
                    is_pixel_valid <= '0';
                end if;
            else
                conv_addr <= std_logic_vector(to_unsigned(0, conv_addr'length));
                real_pixel_address <= 0;
                raw <= 0;
                col <= 0;
                is_pixel_valid <= '0';
            end if;
        end if;
    end process;

    -- SUM anc Check
    process(clk, aresetn)
    variable conv_sum : integer range -1024 to 1024 := 0;
    begin
        if aresetn = '0' then
            is_data_to_send <= '0';
            conv_sum := 0;
            m_axis_tdata <= (others => '0');
        elsif rising_edge(clk) then
            is_data_to_send <= '0';
            if reset_sum = '1' then
                -- Send logic
                if is_address_valid = '1' then 
                    conv_sum := conv_sum + (to_integer(unsigned(conv_data)) * conv_mat(col,raw));
                end if;
                if conv_sum > 127 then
                    conv_sum := 127;
                elsif conv_sum < 0 then
                    conv_sum := 0;
                end if;
                m_axis_tdata <= std_logic_vector(to_unsigned(conv_sum, 8));
                is_data_to_send <= '1';
                -- Reset logic
                conv_sum := 0;
            else
                -- Sum logic
                if is_address_valid = '1' then 
                    conv_sum := conv_sum + (to_integer(unsigned(conv_data)) * conv_mat(col,raw));
                end if;
            end if;
        end if;
    end process;

    -- AXIS Manager
    process(clk, aresetn)
    begin
        if aresetn = '0' then
            m_axis_tvalid_int <= '0';
            --m_axis_tlast <= '0';
        elsif rising_edge(clk) then

            if(m_axis_tready = '1') then
                m_axis_tvalid_int <= '0';
                --is_data_to_send <= '0';
                --m_axis_tlast <= '0';
            end if;
            
            if is_data_to_send = '1' and (m_axis_tvalid_int = '0' or m_axis_tready = '1') then
                m_axis_tvalid_int <= '1';
            end if;
        end if;
    end process;

end architecture;
