library IEEE;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity click_counter is
    Port ( clk : in  STD_LOGIC;
           increment : in  STD_LOGIC;
           decrement : in  STD_LOGIC;
           reset : in STD_LOGIC;
           count : out  STD_LOGIC_VECTOR(13 downto 0));
end click_counter;

architecture Behavioral of click_counter is
    signal internal_count : INTEGER := 0;
    signal count_vector : STD_LOGIC_VECTOR(13 downto 0);
    type state_type is (IDLE, LEFT_CLICK, RIGHT_CLICK);
    signal state : state_type := IDLE;
begin
    process (clk)
    begin
        if rising_edge(clk) then
            case state is
                when IDLE =>
                    if reset = '1' then
                        internal_count <= 0;
                    elsif increment = '1' then
                        if internal_count < 9999 then
                            internal_count <= internal_count + 1;
                        end if;
                        state <= LEFT_CLICK;
                    elsif decrement = '1' then
                        if internal_count > 0 then
                            internal_count <= internal_count - 1;
                        end if;
                        state <= RIGHT_CLICK;
                    end if;
                when LEFT_CLICK =>
                    if increment = '0' then
                        state <= IDLE;
                    end if;
                when RIGHT_CLICK =>
                    if decrement = '0' then
                        state <= IDLE;
                    end if;
            end case;
        end if;
    end process;

    count_vector <= STD_LOGIC_VECTOR(to_unsigned(internal_count, count_vector'length));
    count <= count_vector;
end Behavioral;
