////////////////////////////////////////////////////////////////////////
module HDMI_test(
	input pixclk,  // 25MHz
	input clk_TMDS,  // 250MHz
	output reg [2:0] TMDS,
	output reg TMDS_C
);

////////////////////////////////////////////////////////////////////////
reg [10:0] CounterX, CounterY;
reg hSync, vSync, DrawArea;
always @(posedge pixclk) DrawArea <= (CounterX<960) && (CounterY<540);//640..480

always @(posedge pixclk) CounterX <= (CounterX==1040) ? 0 : CounterX+1;//799
always @(posedge pixclk) if(CounterX==1040) CounterY <= (CounterY==584) ? 0 : CounterY+1;//799  524

always @(posedge pixclk) hSync <= (CounterX>=960) && (CounterX<961);//656  752
always @(posedge pixclk) vSync <= (CounterY>=540) && (CounterY<541); //490..492

////////////////
//wire [7:0] W = {8{CounterX[7:0]==CounterY[7:0]}};
//wire [7:0] A = {8{CounterX[7:5]==3'h2 && CounterY[7:5]==3'h2}};
reg [7:0] red, green, blue;
//always @(posedge pixclk) red <= ({CounterX[5:0] & {6{CounterY[4:3]==~CounterX[4:3]}}, 2'b00} | W) & ~A;
//always @(posedge pixclk) green <= (CounterX[7:0] & {8{CounterY[6]}} | W) & ~A;
//always @(posedge pixclk) blue <= CounterY[7:0] | W | A;

always @(posedge pixclk) 
	begin
	if(CounterY<270)
		begin
		red <= (CounterX[0]^CounterY[0]==0)?8'b00000000:8'b11111111;
		green <= (CounterX[0]^CounterY[0]==0)?8'b00000000:8'b11111111;
		blue <= (CounterX[0]^CounterY[0]==0)?8'b00000000:8'b11111111;
		end
	else
		begin
		red <= CounterX;
		green <= CounterX;
		blue <= CounterX;
		end
	end
	
////////////////////////////////////////////////////////////////////////
wire [9:0] TMDS_red, TMDS_green, TMDS_blue;
TMDS_encoder encode_R(.clk(pixclk), .VD(red  ), .CD(2'b00)        , .VDE(DrawArea), .TMDS(TMDS_red));
TMDS_encoder encode_G(.clk(pixclk), .VD(green), .CD(2'b00)        , .VDE(DrawArea), .TMDS(TMDS_green));
TMDS_encoder encode_B(.clk(pixclk), .VD(blue ), .CD({vSync,hSync}), .VDE(DrawArea), .TMDS(TMDS_blue));

////////////////////////////////////////////////////////////////////////
//wire clk_TMDS, DCM_TMDS_CLKFX;  // 25MHz x 10 = 250MHz
//DCM_SP #(.CLKFX_MULTIPLY(10)) DCM_TMDS_inst(.CLKIN(pixclk), .CLKFX(DCM_TMDS_CLKFX), .RST(1'b0));
//BUFG BUFG_TMDSp(.I(DCM_TMDS_CLKFX), .O(clk_TMDS));

////////////////////////////////////////////////////////////////////////
reg [3:0] TMDS_mod10=0;  // modulus 10 counter
reg [9:0] TMDS_shift_red=0, TMDS_shift_green=0, TMDS_shift_blue=0;
reg TMDS_shift_load=0;
always @(posedge clk_TMDS) TMDS_shift_load <= (TMDS_mod10==4'd9);

always @(posedge clk_TMDS)
	begin
	TMDS_shift_red   <= TMDS_shift_load ? TMDS_red   : TMDS_shift_red  [9:1];    //red
	TMDS_shift_green <= TMDS_shift_load ? TMDS_green : TMDS_shift_green[9:1];    //green
	TMDS_shift_blue  <= TMDS_shift_load ? TMDS_blue  : TMDS_shift_blue [9:1];	  //blue
	TMDS_mod10 <= (TMDS_mod10==4'd9) ? 4'd0 : TMDS_mod10+4'd1;
	end
	
always
	begin
	TMDS[2] = TMDS_shift_red[0];
	TMDS[1] = TMDS_shift_green[0];
	TMDS[0] = TMDS_shift_blue[0];
	TMDS_C  = pixclk;
	end

endmodule
