module delay10(
	input wire i,
	output wire o
	);

wire s01 = ~i /* synthesis keep */; 
wire s02 = ~s01 /* synthesis keep */; 
wire s03 = ~s02 /* synthesis keep */; 
wire s04 = ~s03 /* synthesis keep */; 
wire s05 = ~s04 /* synthesis keep */; 
wire s06 = ~s05 /* synthesis keep */; 
wire s07 = ~s06 /* synthesis keep */; 
wire s08 = ~s07 /* synthesis keep */; 
wire s09 = ~s08 /* synthesis keep */; 
wire s10 = ~s09 /* synthesis keep */; 
assign o = s10 /* synthesis keep */; 

endmodule