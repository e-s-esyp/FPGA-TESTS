module vga_sync_1080(
	input wire CLOCK200,
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
	
	reg [11:0] xi;

always @(posedge CLOCK200)
	begin
	if (xi < 12'd2591) begin
		xi <= xi + 1'b1;
		end
	else begin
		xi <= 12'd0;
		if (y < 11'd1125) begin
			y <= y + 1'b1;
			end
		else begin
			y <= 11'd0;
			frames <= frames + 1'b1;
			end
		end
	if (xi == 200) begin
	   x <= 12'd0;
		end
	else begin
		x <= x + 1'b1;
		end
	end

assign hs = (xi < 12'd2055 || xi >= 12'd2255);
assign vs = (y < 11'd1082 || y >= 11'd1087);
assign visible = (x < 12'd1920 && y < 11'd1080);
	
endmodule

