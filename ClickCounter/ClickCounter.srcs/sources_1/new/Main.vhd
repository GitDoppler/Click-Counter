----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2022 09:01:34 PM
-- Design Name: 
-- Module Name: CommandUnit - Behavioral
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
use IEEE.std_logic_unsigned.all;
use work.Mouse_Types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit is
    Port(
        Reset:      in  STD_LOGIC;
        Clock:      in  STD_LOGIC;
        MouseClock: in  STD_LOGIC;
        MouseData:  in  STD_LOGIC;
        
        reverse:  in  STD_LOGIC;
        
        Segments:   out STD_LOGIC_VECTOR(6 downto 0);
        Anodes:     out STD_LOGIC_VECTOR(3 downto 0);
        isLeft: out STD_LOGIC
    );
end ControlUnit;

architecture Behavioral of ControlUnit is

component SSGDisplay is
    Port(
        Clock:      in STD_LOGIC;
        Number:     in STD_LOGIC_VECTOR(15 downto 0);
        Segments:   out STD_LOGIC_VECTOR(6 downto 0);
        Anodes:     out STD_LOGIC_VECTOR(3 downto 0)
    );
end component;

component MouseDecoder is
    Port(
        Reset:          in  STD_LOGIC;
        Clock:          in  STD_LOGIC;
        MouseClock:     in  STD_LOGIC;
        MouseData:      in  STD_LOGIC;
        Left:           out STD_LOGIC;
        Right:          out STD_LOGIC;
        NewData:        out STD_LOGIC
    );
end component;

component Reverser is
    Port(
        left_click: in STD_LOGIC;
  	    right_click: in STD_LOGIC;
  	    reverse:in STD_LOGIC;
  	    proccesed_left: out STD_LOGIC;
  	    proccesed_right: out STD_LOGIC;
  	    isLeft:out STD_LOGIC
    );
end component;

component Counter is
    Port ( new_data : in  STD_LOGIC;
           increment : in  STD_LOGIC;
           decrement : in  STD_LOGIC;
           reset : in STD_LOGIC;
           count : out  STD_LOGIC_VECTOR(15 downto 0));
end component;

signal Number:      STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal Left: STD_LOGIC;
signal Right: STD_LOGIC;
signal NewData: STD_LOGIC;
signal Proccesed_left: STD_LOGIC;
signal Proccesed_right: STD_LOGIC;

begin

    Count: Counter port map(
        new_data=>NewData,
        increment=>Proccesed_left,
        decrement=>Proccesed_right,
        reset=>Reset,
        count=>Number
    );

    Reverse_Message: Reverser port map(
        left_click=>Left,
        right_click=>Right,
        reverse=>reverse,
        proccesed_left=>Proccesed_left,
        proccesed_right=>Proccesed_right,
        isLeft=>isLeft
    );
    
    Decode_Message: MouseDecoder port map (
        Reset => Reset,
        Clock => Clock,
        MouseClock => MouseClock,
        MouseData => MouseData,
        Left=>Left,
        Right=>Right,
        NewData => NewData
    );
        
    Display_Number: SSGDisplay port map (Clock, Number, Segments, Anodes);
end Behavioral;