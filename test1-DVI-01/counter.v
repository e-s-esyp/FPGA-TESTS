module counter(
	input clk,  
	output reg [7:0] num
	);

always @(posedge clk)
	begin
	num <= num + 1;
	end

endmodule
