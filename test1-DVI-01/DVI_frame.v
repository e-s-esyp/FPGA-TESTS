////////////////////////////////////////////////////////////////////////
module DVI_frame(
	input clock,  // 255MHz
	output reg CL,
	output reg [6:0] inPix = 7'b1000000,
	output reg VS,
	output reg HS,
	output reg DE,
	output reg [10:0] frame = 0,	
	output reg [10:0] X = 0,
	output reg [9:0] Y = 0
);

////////////////////////////////////////////////////////////////////////
reg [2:0] counter = 0;
always @(posedge clock) begin
	counter <= (counter == 6)? 0 : counter + 1;
	if(counter == 0)begin
		inPix[0] <= 0;
		inPix[1] <= 1;
		CL <= 1;
		end
	if(counter == 1)begin
		inPix[1] <= 0;
		inPix[2] <= 1;
		end
	if(counter == 2)begin
		inPix[2] <= 0;
		inPix[3] <= 1;
		CL <= 0;
		end
	if(counter == 3)begin
		inPix[3] <= 0;
		inPix[4] <= 1;
		end
	if(counter == 4)begin
		inPix[4] <= 0;
		inPix[5] <= 1;
		end
	if(counter == 5)begin
		inPix[5] <= 0;
		inPix[6] <= 1;
		CL <= 1;
		end
	if(counter == 6)begin
		inPix[6] <= 0;
		inPix[0] <= 1;

		DE <= (X < 1024) && (Y < 600);
		if(X == 1191) begin
			X <= 0;
			if(Y == 700) begin
				Y <= 0;
				frame <= frame + 1;
				end
			else Y <= Y + 1;
			end
		else X <= X + 1;
		HS <= (X != 1030+frame[9:6]);//||(X >=1050);
		VS <= (Y != 604);//&&(X == 1050)); 
		end
	end
endmodule

