library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity add_3 is	   
  port (
  BINARY : in   STD_LOGIC_VECTOR (7 downto 0);	
     BCD : out  STD_LOGIC_VECTOR (11 downto 0));
--           UNIT : out  STD_LOGIC_VECTOR (3 downto 0);
--           TENS : out  STD_LOGIC_VECTOR (3 downto 0);
--       HUNDREDS : out  STD_LOGIC_VECTOR (3 downto 0));
end add_3;

architecture behavioural_add_3 of add_3 is		 
begin
 process(BINARY)
  variable BINARY_NUMBER: STD_LOGIC_VECTOR (7 downto 0);
  variable BCD_NUMBER: UNSIGNED (11 downto 0);
  variable COUNT : INTEGER;
  begin
   BCD_NUMBER :="000000000000";
   BINARY_NUMBER(7 downto 0) := BINARY;
   COUNT := 8;
    
    while COUNT /=0 loop
	
      if BCD_NUMBER(3 downto 0) >= 5 then 
        BCD_NUMBER(3 downto 0) := BCD_NUMBER(3 downto 0) + 3;
      end if;
      
      if BCD_NUMBER(7 downto 4) >= 5 then 
        BCD_NUMBER(7 downto 4) := BCD_NUMBER(7 downto 4) + 3;
      end if;
	  
	  
      BCD_NUMBER := BCD_NUMBER(10 downto 0) & BINARY_NUMBER(7);
      BINARY_NUMBER := BINARY_NUMBER(6 downto 0) & '0';	 
	  
	  COUNT := COUNT - 1;
    
    end loop;
 
    --UNIT <= STD_LOGIC_VECTOR(BCD_NUMBER(3 downto 0));
--    TENS <= STD_LOGIC_VECTOR(BCD_NUMBER(7 downto 4));
--    HUNDREDS <= STD_LOGIC_VECTOR(BCD_NUMBER(11 downto 8));
      BCD <= STD_LOGIC_VECTOR(BCD_NUMBER(11 downto 0));
  end process;
end behavioural_add_3;
