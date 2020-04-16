library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;	 

entity adder_2 is	
	port(
	ENABLE : in std_logic;
	A,B: in std_logic_vector(7 downto 0);
	SUM: out std_logic_vector(8 downto 0));
end adder_2;

architecture behavioural_adder_2 of adder_2 is		 
signal SUM_AUX: std_logic_vector(8 downto 0) :="000000000";
begin
process(ENABLE)
begin
	 if(ENABLE = '1') then
	 SUM_AUX <= conv_std_logic_vector((conv_integer(A) + conv_integer(B)),9);
	 end if;
end process; 
SUM <= SUM_AUX;
end behavioural_adder_2;



