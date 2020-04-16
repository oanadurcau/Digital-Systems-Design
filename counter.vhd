library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity counter is	 
 Port(CLK,RESET : in std_logic;
      OUTPUT : out std_logic_vector(3 downto 0));
end counter;

architecture behavioural_counter of counter is		
signal INITIAL : std_logic_vector(3 downto 0);
begin	   
	process (CLK,RESET)
	begin
	if(RESET='1') then
		INITIAL <= "0000";
	elsif (CLK'event and CLK='1') then 
		INITIAL <= INITIAL + 1;
	end if;
	end process;
OUTPUT <= INITIAL;	
end behavioural_counter;


