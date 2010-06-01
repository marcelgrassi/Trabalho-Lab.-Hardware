entity clock_generator is
port(	Halt : in bit;
		Clk : out bit
	);
end entity;

architecture arq_clock of clock_generator is
begin

	process(Clk)
	begin
		
		Clk <= (not Clk) after 1 ns;
		
		if(Halt = '1')
			Clk <= (not Clk) after 1 ns;
			Clk <= (not Clk) after 1 ns;
			wait;
		else
			Clk <= (not Clk) after 1 ns;	
			
		end if;	
		
	
	end process;


end architecture;
