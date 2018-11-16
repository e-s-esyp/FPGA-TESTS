module delay(
	input wire signal,
	output wire delayed
	);

wire s01 = ~signal /* synthesis keep */; 
wire s02 = ~s01 /* synthesis keep */; 
wire s03 = ~s02 /* synthesis keep */; 
wire s04 = ~s03 /* synthesis keep */; 
wire s05 = ~s04 /* synthesis keep */; 
wire s06 = ~s05 /* synthesis keep */; 
wire s07 = ~s06 /* synthesis keep */; 
wire s08 = ~s07 /* synthesis keep */; 
wire s09 = ~s08 /* synthesis keep */; 
wire s10 = ~s09 /* synthesis keep */; 
assign delayed = s10 /* synthesis keep */; 

endmodule