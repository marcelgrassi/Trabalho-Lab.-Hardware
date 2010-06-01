--library ieee;
--use IEEE std_logic_1164.all;

entity ALU is
	port( a, b : in bit_vector(7 downto 0);
		  aluop : in bit_vector(1 downto 0);
		  result : out bit_vector(7 downto 0);
		  zero : inout bit
		);
end entity;

architecture arq_ALU of ALU is
begin
	
	process(a, b) is
		signal carry : out bit;
		variable ind : integer;
	begin
		
		-- aluop = "00" = +adição
		case aluop is
			when "00" =>	
				carry <= '0';
				for ind in 0 to 7 loop
					if((a(ind) xor b(ind)) = '1')then
						result(ind) <= a(ind) xor b(ind);
					elsif(a(ind) = '0')then
							result(ind) <= a(ind) and b(ind);
					else
							result(ind) <= ((a(ind) xor b(ind)) or carry);
							carry := '1';
					end if;	
				end loop;
			
			-- aluop = "01" = -subtração
			when "01" =>
				-- laço para o complemento de 2
				carry <= '0';
				for	ind in 0 to 7 loop 
					result(ind) <= not b(ind); 
				end loop;
				-- calculo para a subtração
				for ind in 0 to 7 loop
					if((a(ind) xor result(ind)) = '1')then
						result(ind) <= a(ind) xor result(ind);
					elsif(a(ind) = '0')then
							result(ind) <= a(ind) and result(ind);
					else
							result(ind) <= ((a(ind) xor result(ind)) or carry);
							carry := '1';
					end if;	
				end loop;
		
			-- aluop = "10" = /divisão		
			when "10" =>
		
			-- aluop = "11" = *multiplicação
			when "11" =>
			
		end case;
	
	end process;
	
end architecture;