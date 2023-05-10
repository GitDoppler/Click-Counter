----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2022 12:51:38 PM
-- Design Name: 
-- Module Name: MouseTypes - 
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

package Mouse_Types is

    type Mouse_Message is record
        LeftClick:  STD_LOGIC;
        RightClick: STD_LOGIC;
    end record;
    
    function ParseMouseData(signal Buf: STD_LOGIC_VECTOR(42 downto 0)) return Mouse_Message;
    function IsMouseDataValid(signal Buf: STD_LOGIC_VECTOR(42 downto 0)) return Boolean;
    
end package;

package body Mouse_Types is
    function ParseMouseData(signal Buf: STD_LOGIC_VECTOR(42 downto 0)) return Mouse_Message is
    variable Msg: Mouse_Message;
    begin
        Msg.LeftClick   := Buf(41);
        Msg.RightClick  := Buf(40); 
        return Msg;
    end function;
    
    function ParityOf(signal Buf: STD_LOGIC_VECTOR) return STD_LOGIC is
    variable P: STD_LOGIC := '1';
    begin
        for I in Buf'RANGE loop
            P := P xor Buf(I);
        end loop;
        return P;
    end function;
    
    function IsMouseDataValid(signal Buf: STD_LOGIC_VECTOR(42 downto 0)) return Boolean is
    begin
        if Buf(42) /= '0' then return false; end if;
    
        if Buf(38) /= '1' then return false; end if;
        if ParityOf(Buf(41 downto 34)) /= Buf(33) then return false; end if;
        if Buf(32) /= '1' or Buf(31) /= '0' then return false; end if;
        
        if ParityOf(Buf(30 downto 23)) /= Buf(22) then return false; end if;
        if Buf(21) /= '1' or Buf(20) /= '0' then return false; end if;
        
        if ParityOf(Buf(19 downto 12)) /= Buf(11) then return false; end if;
        if Buf(10) /= '1' or Buf(9) /= '0' then return false; end if;
        
        if ParityOf(Buf(8 downto 1)) /= Buf(0) then return false; end if;
        
        return true;
    end function;
end;
