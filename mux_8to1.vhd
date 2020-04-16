library IEEE;
use IEEE.STD_LOGIC_1164.all;   
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity mux_8to1 is	
	Port ( S0,S1,S2: in  STD_LOGIC;
           I2,I3,I6,I7: in  STD_LOGIC_VECTOR (7 downto 0);
           X   : out STD_LOGIC_VECTOR (7 downto 0));
end mux_8to1;

architecture behavioural_mux8to1 of mux_8to1 is
begin   									  
process(S2, S1, S0)
begin  
	
if(S2 = '0' and  S1 = '1'  and S0 = '0') --010 repeated 6 digit seq for student nr.1
then
    X <= I2;   
elsif(S2 = '0'   and  S1 = '1'  and  S0 = '1') --011 repeated 6 digit seq for student nr.2
then
    X <= I3;
elsif(S2 = '1'  and S1 = '1'  and S0 = '0') --110 pseudo random seq reduced range 0 to 15 
    then
    X <= I6; 
elsif( S2 = '1'  and S1 = '1'  and S0 = '1') --111 pseudo random seq full range 0 to 255
   then
   X <= I7;	
end if;	 
end process;
end behavioural_mux8to1;
