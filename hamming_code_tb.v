module hamming_code_tb();

reg [3:0] n;
wire [6:0] code; 

hamming_code DUT(n,code);//instantiation

initial 
	begin
		    n = 4'b1000;
		#10 n = 4'b0011;
		#10 $finish;

	end

initial
	$monitor("THE HAMMING CODE = %b",code);

endmodule