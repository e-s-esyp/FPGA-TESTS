module counter(
	input clock,
	output wire [7:0] out
	);

reg [32:0] num;

always @(posedge clock)
	begin
	num <= num + 1;
	end

assign out = num [32:25];
	
endmodule
