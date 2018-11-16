//www.21eda.com
//LCD1602
`define LCD_SETCGRAMADDR 8'h40
`define LCD_SETDDRAMADDR 8'h80

module LCD1602(clk, reset, buzzer, rs, rw, en, dat);  
	input clk;  
	input reset;
	output reg buzzer;
	output reg [7:0] dat; 
	output en;
	output reg rs, rw;
	reg [15:0] counter; 
	reg [2:0] stage; 
	reg [7:0] step; 
	reg [2:0] var;
	reg clkr, e, s1, s2, started, nextstep; 
	
always @(posedge clk) begin 
	counter = counter + 1; 
	if (counter == 16'h000f)  
		clkr = ~clkr; 
end

always @(posedge clkr) begin 
	rw = 0;
	s2 = reset;
	if (s1 & ~s2) begin
		stage = 3'h0;
		step = 8'h0;
		e = 0;
		var = var + 3'h1;
		started = 1;
		end	
	s1 = s2;
	case (stage)
		3'h0: begin
			buzzer <= 0;
			nextstep = (step < 8'h4);
			rs <= 0;
			case (step) 
				8'h0: dat <= 8'h38;
				8'h1: dat <= 8'h0C;
				8'h2: dat <= 8'h06;
				8'h3: dat <= 8'h01; //Clear display
				8'h4: dat <= `LCD_SETDDRAMADDR | 8'h48;
				endcase 
			if (nextstep) begin
				step = step + 1;
				end
			end
		3'h1: begin
			nextstep = (step < 8'h7);
			rs <= 1;
			case (step)
				8'h0: dat <= "V";
				8'h1: dat <= "[";
				8'h2: dat <= "0" + var;
				8'h3: dat <= "]";
				8'h4: dat <= "=";
				default: dat <= var + "A";
				endcase
			if (nextstep) begin
				step = step + 8'h1;
				end
			end
		default: begin
			buzzer <= 1;
			e = 1;
			end
		endcase
	if (~nextstep) begin
		nextstep = 1;
		stage = stage + 1;
		step = 8'h0;
		end
end	
	
assign en = clkr | e;

endmodule  