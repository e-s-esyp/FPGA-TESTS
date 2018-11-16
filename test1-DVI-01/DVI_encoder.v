module DVI_encoder(
	input [6:0] inPix,
	input VS,
	input HS,
	input DE,
	input [5:0] R,
	input [5:0] G,
	input [5:0] B,
	output reg [2:0] TDMS
	);

always 
	begin
	if(inPix[0] == 1)begin
		TDMS[0] <= G[0];
		TDMS[1] <= B[1];
		TDMS[2] <= DE;
		end
	if(inPix[1] == 1)begin
		TDMS[0] <= R[5];
		TDMS[1] <= B[0];
		TDMS[2] <= VS;
		end
	if(inPix[2] == 1)begin
		TDMS[0] <= R[4];
		TDMS[1] <= G[5];
		TDMS[2] <= HS;
		end
	if(inPix[3] == 1)begin
		TDMS[0] <= R[3];
		TDMS[1] <= G[4];
		TDMS[2] <= B[5];
		end
	if(inPix[4] == 1)begin
		TDMS[0] <= R[2];
		TDMS[1] <= G[3];
		TDMS[2] <= B[4];
		end
	if(inPix[5] == 1)begin
		TDMS[0] <= R[1];
		TDMS[1] <= G[2];
		TDMS[2] <= B[3];
		end
	if(inPix[6] == 1)begin
		TDMS[0] <= R[0];
		TDMS[1] <= G[1];
		TDMS[2] <= B[2];
		end
	end

endmodule