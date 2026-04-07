LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY alu32 IS
GENERIC(nBits:	INTEGER := 32);
PORT(
a : IN STD_LOGIC_VECTOR(nBits-1 DOWNTO 0);
b : IN STD_LOGIC_VECTOR(nBits-1 DOWNTO 0);
op : IN STD_LOGIC_VECTOR( 2 DOWNTO 0);
result : Buffer STD_LOGIC_VECTOR(nBits-1 DOWNTO 0);
cOut : Buffer std_logic_vector(nBits-1 downto 0);
coutF: OUT STD_LOGIC;
zero : OUT STD_LOGIC
);
END alu32;


ARCHITECTURE description OF alu32 IS
   
BEGIN
	process(a, b, op)
        variable add_ext : unsigned(nBits downto 0);
        variable sub_ext : unsigned(nBits downto 0);
		begin 			   
         cOut <= (others => '0');
		 case op is 
			 when "010" => --addition
                   add_ext := unsigned('0' & a) + unsigned('0' & b);
                   result <= std_logic_vector(add_ext(nBits-1 downto 0));
                   cOut(nBits-1) <= add_ext(nBits);
			  
			 when "000" =>--and operation 
				result <= a AND b;
				
			 when "001" =>--OR operation 
				result <= a OR b;
				
			 when "110"=>--subtraction	    
                   sub_ext := unsigned('0' & a) - unsigned('0' & b);
                   result <= std_logic_vector(sub_ext(nBits-1 downto 0));
                   cOut(nBits-1) <= not sub_ext(nBits);

			 when "100" =>--left shift
                result(0) <='0';
				 for I in 1 to nBits-1 loop
				   result(I) <=a(I-1); 
				 end loop;
                cOut(nBits-1) <= a(nBits-1);
             when "101" =>--right shift
                 result(nBits-1) <='0';
				 for I in 0 to nBits-2 loop				 
				   result(I) <=a(I+1); 
				 end loop;
                cOut(nBits-1) <= a(0);
				 
			 when others =>
				 result <= (others=>'0');
			 end case; 
	end process;	
		 
		coutF<=cOut(nBits-1); 

process(result)
 begin
	if ( result=(result'range => '0')) then
		zero<='1';
		else zero<='0';
	end if;	
 end process;
 	
END description; 