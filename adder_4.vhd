library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;	 

entity adder_4 is	
	port(
	ENABLE : in std_logic;
	A,B,C,D: in std_logic_vector(7 downto 0);
	SUM: out std_logic_vector(9 downto 0));
end adder_4;



architecture behavioural_adder_4 of adder_4 is		 
signal SUM_AUX: std_logic_vector(9 downto 0) :="0000000000";
begin
process(ENABLE)
begin
	 if(ENABLE = '1') then
	 SUM_AUX <= conv_std_logic_vector((conv_integer(A) + conv_integer(B)+ conv_integer(C) + conv_integer(D)),10);
	 end if;
end process; 
SUM <= SUM_AUX;
end behavioural_adder_4;
