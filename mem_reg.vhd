library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mem_reg is
	port(I: in std_logic_vector(7 downto 0);
	     clk, clr,enable: in std_logic;
		 q0,q1,q2,q3: out std_logic_vector(7 downto 0));
end mem_reg;		 

architecture arch_mem_reg of mem_reg is
signal r0,r1,r2,r3 : std_logic_vector(7 downto 0);

begin

process(clk) 
begin
  if (clk'event and clk = '1') then
	  if reset='1' then
		    r0 <= "00000000";
   			r1 <= "00000000";
  			r2 <= "00000000";
   			r3 <="00000000";
	  elsif enable='1' then
		  	r0 <= I;
   			r1 <= r0;
   			r2 <= r1;
   			r3 <= r2;
	end if;
	end if;
   		
  
end if;
end process;
   q0 <= r0; 
   q1 <= r1; 
   q2 <= r2; 
   q3 <= r3; 
end architecture arch_mem_reg;