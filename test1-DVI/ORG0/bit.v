module bit7(
	input  [7:0] num,
	output reg bit7
	);

always 
	begin
	bit7 <= num[7];
	end

endmodule

module bit0(
	input  [6:0] num,
	output reg bit0
	);

always 
	begin
	bit0 <= num[0];
	end

endmodule
