module vga_sync_1080_150(
	input wire CLOCK150,
	output wire vs,
	output wire hs,
	output reg [7:0] frames,
	output reg [11:0] x,
	output reg [10:0] y,
	output wire visible
	);

// "1920x1080_68.60"  200.00  
// 1920 2056 2256 2592  
// 1080 1083 1088 1126 
// -hsync +vsync

// "1920x1080_52.90"  150.00  
// 1920 2032 2232 2544  
// 1080 1083 1088 1116 
// -hsync +vsync


always @(posedge CLOCK150)
	begin
	if (x < 12'd2543) begin
		x <= x + 1'b1;
		end
	else begin
		x <= 12'd0;
		if (y < 11'd1115) begin
			y <= y + 1'b1;
			end
		else begin
			y <= 11'd0;
			frames <= frames + 1'b1;
			end
		end
	end

assign hs = (x < 12'd2031 || x >= 12'd2231);
assign vs = !(y < 11'd1082 || y >= 11'd1087);
assign visible = (x < 12'd1920 && y < 11'd1080);
	
endmodule

