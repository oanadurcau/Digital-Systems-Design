library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity seq_nr1 is
	port( CLK : in  STD_LOGIC;
	      NUMBER : out STD_LOGIC_VECTOR (7 downto 0));
end seq_nr1;


architecture behavioural_seq_nr1 of seq_nr1 is	
signal NR : STD_LOGIC_VECTOR (7 downto 0);
begin
process(CLK) 
variable COUNT : INTEGER := 0;
variable NR1 : STD_LOGIC_VECTOR (7 downto 0) := "10000001";
variable NR2 : STD_LOGIC_VECTOR (7 downto 0) := "10000010";
variable NR3 : STD_LOGIC_VECTOR (7 downto 0) := "10000011";
variable NR4 : STD_LOGIC_VECTOR (7 downto 0) := "10000100";
variable NR5 : STD_LOGIC_VECTOR (7 downto 0) := "10000101";
variable NR6 : STD_LOGIC_VECTOR (7 downto 0) := "10000110";
begin
if (CLK'event and CLK='1') then 
	COUNT := COUNT + 1;
end if;	
if(COUNT = 1) then 
	NR <= NR1;
elsif(COUNT = 2) then 
	NR <= NR2;
elsif(COUNT = 3) then 
	NR <= NR3;
elsif(COUNT = 4) then 
	NR <= NR4;
elsif(COUNT = 5) then 
	NR <= NR5;
elsif(COUNT = 6) then 
	NR <= NR6;
	COUNT := 0;
else 
	COUNT := 0;
end if;	  

end process;
NUMBER <= NR;
end behavioural_seq_nr1;


