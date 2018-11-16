module sign_0(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	(((x==2)||(x==5))&&(y<6)&&(y>0))||
				(((x==3)||(x==4))&&((y==0)||(y==6)));
	end
endmodule

module sign_1(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	((x==5)&&(y!=7))||
				((x==3)&&(y==2))||
				((x==4)&&(y==1));
	end
endmodule

module sign_2(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	((x+y==7)&&(x>1)&&(x<6))||
				((y==0)&&(x>1)&&(x<5))||
				((y==1)&&(x==5))||
				((y==6)&&(x>1)&&(x<6));
	end
endmodule

module sign_3(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	(((y==0)||(y==6))&&(x>1)&&(x<5))||
				((y==3)&&((x==3)||(x==4)))||
				((x==5)&&(y>0)&&(y<6)&&(y!=3));
	end
endmodule

module sign_4(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	((x==2)&&(y<4))||
				(((x==3)||(x==4))&&(y==3))||
				((x==5)&&(y!=7));
	end
endmodule

module sign_5(
	input [2:0] x,   
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	((x>1)&&(x<5)&&((y==0)||(y==3)||(y==6)))||
				((x==2)&&((y==1)||(y==2)))||
				((x==5)&&((y==4)||(y==5)));
	end
endmodule

module sign_6(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	(((x==3)||(x==4))&&((y==0)||(y==3)||(y==6)))||
				((x==2)&&(y>0)&&(y<6))||
				((x==5)&&((y==4)||(y==5)));
	end
endmodule

module sign_7(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	((y==0)&&(x>1)&&(x<6))||
				((y==1)&&(x==5))||
				((x==3)&&(y>3)&&(y!=7))||
				((x==4)&&((y==2)||(y==3)));
	end
endmodule

module sign_8(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	(x>1)&&(x<6)&&(y!=7)&&
				(((y==0)||(y==3)||(y==6))^^((x==2)||(x==5)));
	end
endmodule

module sign_9(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	(((x==3)||(x==4))&&((y==0)||(y==3)||(y==6)))||
				((x==5)&&(y>0)&&(y<6))||
				((x==2)&&((y==1)||(y==2)));
	end
endmodule

module sign_A(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	0;
	end
endmodule

module sign_B(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	0;
	end
endmodule

module sign_C(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	0;
	end
endmodule

module sign_D(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	0;
	end
endmodule

module sign_E(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	0;
	end
endmodule

module sign_F(
	input [2:0] x,
	input [2:0] y,
	output reg v 
	);
	always begin
		v <= 	0;
	end
endmodule


