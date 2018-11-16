module timer (
	input wire start,
	input wire stop,
	input wire clock,
	output reg [7:0] result
);

reg [7:0] num;

always @(posedge clock)
	begin
	if (start & ~stop) begin
		num <= num + 8'd1;
		end
	else begin
		if (num != 8'd0)begin
			result <= num;
			end
		num <= 8'd0;
		end
	end

endmodule
