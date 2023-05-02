LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Inverter IS
  PORT (
  	left_click: in STD_LOGIC;
  	right_click: in STD_LOGIC;
  	inverse:in STD_LOGIC;
  	proccesed_left: out STD_LOGIC;
  	proccesed_right: out STD_LOGIC
    );
END Inverter;

ARCHITECTURE TypeArchitecture OF Inverter IS

BEGIN

	process(inverse,left_click,right_click)
	begin
		if inverse='1' then
			proccesed_left<=right_click;
			proccesed_right<=left_click;
		else
			proccesed_left<=left_click;
			proccesed_right<=right_click;
		end if;
	end process;

END TypeArchitecture;
