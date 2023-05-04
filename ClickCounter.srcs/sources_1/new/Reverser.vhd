----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/04/2023 07:43:09 PM
-- Design Name: 
-- Module Name: Reverser - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY Reverser IS
  PORT (
  	left_click: in STD_LOGIC;
  	right_click: in STD_LOGIC;
  	reverse:in STD_LOGIC;
  	proccesed_left: out STD_LOGIC;
  	proccesed_right: out STD_LOGIC
    );
END Reverser;

ARCHITECTURE Behavioral OF Reverser IS

BEGIN

	process(reverse,left_click,right_click)
	begin
		if reverse='1' then
			proccesed_left<=right_click;
			proccesed_right<=left_click;
		else
			proccesed_left<=left_click;
			proccesed_right<=right_click;
		end if;
	end process;

END Behavioral;