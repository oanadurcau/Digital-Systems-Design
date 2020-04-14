library IEEE;
use IEEE.STD_LOGIC_1164.all;   
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity mux_2to1 is	
	Port ( SEL : in  STD_LOGIC;
           I0,I1: in  STD_LOGIC_VECTOR (7 downto 0);
           X   : out STD_LOGIC_VECTOR (7 downto 0));
end mux_2to1;

architecture arch_mux2to1 of mux_2to1 is
begin   									  
	process (SEL, I0,I1)		
	begin
		
	if (SEL='0') then 
		X<= I0;
	else 
		X<=I1;	   
	end if;
	 end process;
end arch_mux2to1;


