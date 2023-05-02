library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MouseDecoder is
    Port(
        Reset:          in  STD_LOGIC;
        Clock:          in  STD_LOGIC;
        MouseClock:     in  STD_LOGIC;
        MouseData:      in  STD_LOGIC;
        LeftClick: out STD_LOGIC;
        RightClick: out STD_LOGIC;
        NewMessage:     out STD_LOGIC
    );
end MouseDecoder;

architecture Behavioral of MouseDecoder is
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
    
    Shift_And_Sync: process(Reset, MouseClock)
    begin
        if Reset = '1' then
            MouseReg <= (others => '0');
        elsif falling_edge(MouseClock) then
            Trigger <= '0';
            MouseReg <= MouseReg(41 downto 0) & MouseData;
            if MouseBits = 43 then
                if IsMouseDataValid(MouseReg) then 
                    LeftClick <= MouseReg(41);
                    RightClick <= MouseReg(40);
                    Trigger <= '1';
                end if;
            end if;
        end if;
    end process;
    
    Pulse_Gen: process(Reset, Clock)
    variable Idle: Boolean := true;
    begin
        if Reset = '1' then
            Idle := true;
        elsif rising_edge(Clock) then
            NewMessage <= '0';
            if Idle then
                if Trigger = '1' then
                    NewMessage <= '1';
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

