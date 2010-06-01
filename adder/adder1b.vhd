entity adder1b is
	port 
	(
		a , b, cin : in bit;
		sum : out bit
	--	cout : out bit
	);
end somador1b;

architecture somaUmBit of adder1b is
begin
	sum <= a xor b xor cin;
	--cout <= (a and b) or (a and cin) or (b and cin);
end somaUmBit;
