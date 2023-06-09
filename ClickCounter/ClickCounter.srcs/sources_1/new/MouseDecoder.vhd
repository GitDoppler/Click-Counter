----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2022 01:10:02 PM
-- Design Name: 
-- Module Name: MouseDecoder - Behavioral
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
use Work.Mouse_Types.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MouseDecoder is
    Port(
        Reset:          in  STD_LOGIC;
        Clock:          in  STD_LOGIC;
        MouseClock:     in  STD_LOGIC;
        MouseData:      in  STD_LOGIC;
        Left:           out STD_LOGIC;
        Right:          out STD_LOGIC;
        NewData:        out STD_LOGIC
    );
end MouseDecoder;

architecture Behavioral of MouseDecoder is
signal MouseBits:   NATURAL := 0;
signal MouseReg:    STD_LOGIC_VECTOR(42 downto 0) := (others => '0');
signal Trigger:     STD_LOGIC;
begin
    Count_Bits: process(Reset, MouseClock)
    begin
        if Reset = '1' then
            MouseBits  <= 0;
        elsif rising_edge(MouseClock) then
            -- Counter modulo 43
            if MouseBits <= 42 then
                MouseBits <= MouseBits + 1;
            else
                MouseBits <= 0;
            end if;
        end if;
    end process;
    
    Shift_Sync: process(Reset, MouseClock)
    variable MouseMessage: Mouse_Message;
    begin
        if Reset = '1' then
            MouseReg <= (others => '0');
        elsif falling_edge(MouseClock) then
            Trigger <= '0';
            MouseReg <= MouseReg(41 downto 0) & MouseData;
            if MouseBits = 43 then
                if IsMouseDataValid(MouseReg) then 
                    MouseMessage := ParseMouseData(MouseReg);
                    Left<=MouseMessage.LeftClick;
                    Right<=MouseMessage.RightClick;
                    Trigger <= '1';
                end if;
            end if;
        end if;
    end process;
    
    Generate_Clk: process(Reset, Clock)
    variable Idle: Boolean := true;
    begin
        if Reset = '1' then
            Idle := true;
        elsif rising_edge(Clock) then
            NewData <= '0';
            if Idle then
                if Trigger = '1' then
                    NewData <= '1';
                    Idle := false;
                end if;
            else
                if Trigger = '0' then
                    Idle := true;
                end if;
            end if;
        end if;
    end process;

end Behavioral;