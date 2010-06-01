entity adder is
	port 
	(
		PC : in bit_vector(7 downto 0);
		B : in bit_vector(7 downto 0) := "00000001";
		sum : out bit_vector(7 downto 0);
		--cout : out bit
	);
end somador4b;

architecture arq_adder of adder is

 	 signal carry : bit_vector(6 downto 0);
	begin 
 	 sb0: entity work.adder1b(somaUmBit)
	      port map (PC => PC(0), B => B(0), cin => '0', sum => sum(0));
	 sb1: entity work.adder1b(somaUmBit) 
	      port map (PC => PC(1), B => B(1), cin => carry(0), sum => sum(1));
	 sb2: entity work.adder1b(somaUmBit) 
	      port map (PC => PC(2), B => B(2), cin => carry(1), sum => sum(2));	 
	 sb3: entity work.adder1b(somaUmBit) 
	      port map (PC => PC(3), B => B(3), cin => carry(2), sum => sum(3));
	 sb4: entity work.adder1b(somaUmBit)
	      port map (PC => PC(4), B => B(4), cin => carry(3), sum => sum(4));
	 sb5: entity work.adder1b(somaUmBit) 
	      port map (PC => PC(5), B => B(5), cin => carry(4), sum => sum(5));
	 sb6: entity work.adder1b(somaUmBit) 
	      port map (PC => PC(6), B => B(6), cin => carry(5), sum => sum(6));	 
	 sb7: entity work.adder1b(somaUmBit) 
	      port map (PC => PC(7), B => B(7), cin => carry(6), sum => sum(7));  
	      
end architecture;
