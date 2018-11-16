module vga_sync(
	input wire clock,
	output wire vs,
	output wire hs,
	output reg [7:0] frames,
	output reg [9:0] x,
	output reg [9:0] y,
	output wire visible,
	output reg CLOCK_25
	);



always @(posedge clock)
	begin
	CLOCK_25 <= ~CLOCK_25;
	if (CLOCK_25) begin
		if (x < 10'd799) begin
			x <= x + 1'b1;
			end
		else begin
			x <= 10'd0;
			if (y < 10'd525) begin
				y <= y + 1'b1;
				end
			else begin
				y <= 10'd0;
				frames <= frames + 1'b1;
				end
			end
		end
	end

assign hs = (x <= 10'd656 || x >= 10'd752);
assign vs = (y <= 10'd490 || y >= 10'd492);
assign visible = (x < 640 && y < 480);
	
endmodule

