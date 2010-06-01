entity control_unit is
begin
port(	Op : in bit_vector(2 downto 0);
		Func : in bit_vector(1 downto 0);
		RegDst : out bit;
		RegWrite : out bit;
		MemReal : out bit;
		MemWrite : out bit;
		MemToReg : out bit;
		Branch : out bit;
		InvZero : out bit;
		Halt : out bit;
		ALUSrc1 : out bit_vector(1 downto 0);
		ALUSrc2 : out bit_vector(1 downto 0);
		ALUOp : out bit_vector(1 downto 0)
	);

end entity;

architecture arq_UCP of control_unit is
begin

	process(Op, Func)
	begin
	
	
	--NÃO ENTENDI O QUE É PARA SER FEITO!!!
	
	
	
	end process;



end architecture;
