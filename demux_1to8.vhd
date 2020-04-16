library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity demux_1to8 is
Port (    S0,S1,S2: in STD_LOGIC;
          I1,I2,I3,I6,I7 : out STD_LOGIC);
end demux_1to8;

architecture behavioural_demux_1to8 of demux_1to8 is
begin
process(S2, S1, S0)
begin  
	
if(S2 = '0' and S1 = '0' and S0 = '1') --001 square_wave
then
    I1 <= '1';
else 
	I1 <= '0';
end if;


if(S2 = '0' and  S1 = '1'  and S0 = '0') --010 repeated 6 digit seq for student nr.1
then
    I2 <= '1'; 
else 
	I2 <= '0';
end if;	   


if(S2 = '0'   and  S1 = '1'  and  S0 = '1') --011 repeated 6 digit seq for student nr.2
then
    I3 <= '1';
else 
	I3 <= '0';
end if;
	
if(S2 = '1'  and S1 = '1'  and S0 = '0') --110 pseudo random seq reduced range 0 to 15 
    then
    I6 <= '1'; 
	else 
	I6 <= '0';
end if;	 

if( S2 = '1'  and S1 = '1'  and S0 = '1') --111 pseudo random seq full range 0 to 255
   then
   I7 <= '1';	
   else 
	I7 <= '0';
end if;	 

end process;
end behavioural_demux_1to8;
