library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;	 

entity adder_2 is	
	port(		   
	A,B: in std_logic_vector(7 downto 0);
	SUM: out std_logic_vector(8 downto 0));
end adder_2;



architecture arch_adder_2 of adder_2 is		 
signal SUM_AUX: std_logic_vector(8 downto 0);
begin

	 SUM_AUX <= conv_std_logic_vector((conv_integer(A) + conv_integer(B)),9);
	 SUM <= SUM_AUX(8 downto 0);

end arch_adder_2;



