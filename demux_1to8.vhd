library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity demux_1to8 is
  Port (S0,S1,S2,Y :in STD_LOGIC; 							 
		I0,I1,I2,I3,I4,I5,I6,I7 :out STD_LOGIC);
end demux_1to8;



architecture arch_demux_1to8 of demux_1to8 is 
begin
Process(S2, S1, S0 , Y)
begin
I0 <= (not S2)   and   (not S1)    and   (not S0)    and Y;
I1 <= (not S2)   and   (not S1)    and       S0      and Y;             
I2 <= (not S2)   and      S1       and   (not S0)    and Y;
I3 <= (not S2)   and      S1       and       S0      and Y;
I4 <=     S2     and   (not S1)    and   (not S0)    and Y;
I5 <=     S2     and   (not S1)    and       S0      and Y;
I6 <=     S2     and      S1       and   (not S0)    and Y;
I7 <=     S2     and      S1       and       S0      and Y;

end Process;
end arch_demux_1to8;
