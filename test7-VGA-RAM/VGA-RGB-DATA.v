module rgb_data(
	input wire [7:0] frames,
	input wire [9:0] x,
	input wire [9:0] y,
	input wire visible,
	output wire r,
	output wire g,
	output wire b
	);

assign r = (x == y);
assign g = (x == y + 2);
assign b = (x == y + 4);
	
endmodule

