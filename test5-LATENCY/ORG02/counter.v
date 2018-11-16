module counter(
	input clock,
//	output wire [7:0] out,
	output wire start
	);

reg [32:0] num;

always @(posedge clock)
	begin
	num <= num + 1;
	end

//assign out = num [32:25];
assign start = num [8];
	
endmodule
