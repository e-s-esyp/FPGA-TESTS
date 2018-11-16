module DVI_rgb(
	input [10:0] frame,
	input [10:0] X,
	input [9:0] Y,
	input MASK,
	input LIGHT,
	output reg [5:0] R,
	output reg [5:0] G,
	output reg [5:0] B
);
always begin
if(MASK==1)
	begin
		R <= (LIGHT==0)?8'b00000000:8'b11111111;
		G <= (LIGHT==0)?8'b00000000:8'b11111111;
		B <= (LIGHT==0)?8'b00000000:8'b11111111;
	end
else 
	begin
	if(Y<200)
		begin
		R <= (X[0]^Y[0]==0)?8'b00000000:8'b11111111;
		G <= (X[0]^Y[0]==0)?8'b00000000:8'b11111111;
		B <= (X[0]^Y[0]==0)?8'b00000000:8'b11111111;
		end
	else 
		if(Y<400)
			begin
			if(X<512)
				begin
				R <= 8'b00000000;
				G <= X+frame;
				B <= 8'b00000000;
				end
			else
				begin
				R <= Y+frame;
				G <= 8'b00000000;
				B <= 8'b00000000;			
				end
			end
		else
			begin
				R <= X;
				G <= X;
				B <= Y+frame;			
			end
	end
end
endmodule

