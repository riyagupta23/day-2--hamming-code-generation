// DAY 2 7 BIT HAMMING CODE GENERATION

module hamming_code(input [3:0] n,
			  output [6:0] code);

wire [2:0]p;//3 bit parity added with the data bits for EC and ED

assign p[2] = n[3] ^ n[1] ^ n[0] ;
assign p[1] = n[3] ^ n[2] ^ n[0] ;
assign p[0] = n[3] ^ n[2] ^ n[1] ;

assign code = {n[3:1],p[2],n[0],p[1:0]};

endmodule

