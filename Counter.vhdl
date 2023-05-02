library IEEE;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity click_counter_v2 is
    Port ( new_data : in  STD_LOGIC;
           increment : in  STD_LOGIC;
           decrement : in  STD_LOGIC;
           reset : in STD_LOGIC;
           count : out  STD_LOGIC_VECTOR(13 downto 0));
end click_counter_v2;

architecture Behavioral of click_counter_v2 is
    signal internal_count : INTEGER := 0;
    signal count_vector : STD_LOGIC_VECTOR(13 downto 0);
    signal X,Y: STD_LOGIC:='0';
begin
    process (new_data)
    begin
        if reset = '1' then
        	  internal_count<=0;	
            X <= '0';
            Y <= '0';
        elsif falling_edge(new_data) then    
            if increment = '1' and X = '0' and internal_count < 9999 then
            	internal_count <= internal_count + 1;
            end if;
            if decrement = '1' and Y = '0' and internal_count > 0 then
                internal_count <= internal_count - 1;
            end if;
            X <= increment;
            Y <= decrement;
        end if;
    end process;

    count_vector <= STD_LOGIC_VECTOR(to_unsigned(internal_count, count_vector'length));
    count <= count_vector;
end Behavioral;
