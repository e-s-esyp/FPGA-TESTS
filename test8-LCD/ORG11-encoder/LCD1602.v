//www.21eda.com
//LCD1602
`define LCD_SETCGRAMADDR 8'h40
`define LCD_SETDDRAMADDR 8'h80

module LCD1602(clk, reset, buzzer, rs, rw, en, dat, 
	d_sw, enc, Led);  
	input clk;  
	input reset;
	input d_sw;
	input [1:0] enc;
	output reg buzzer;
	output reg [7:0] dat; 
	output en;
	output reg rs, rw;
	output [3:0] Led;
	reg [16:0] counter; 
	reg [2:0] stage; 
	reg [7:0] step; 
	reg [7:0] varN;
	reg [2:0] val;
	reg clk1, clk2;
	reg e, reset1, reset2, nextstep; 
	reg [2:0] encR;
	reg repaint;
	reg d_sw1;
	reg [47:0] debounce;
	
always @(posedge clk) begin
	counter = counter + 17'h1;
	if (counter[7:0] == 8'h10) begin
		if (val[1:0] != enc) begin
//			repaint = 1;
			end;
		val[1:0] = enc;
		val[2] = d_sw;
		if (~(enc[1] | enc[0])) begin
			case (encR)
				3'h2: begin varN = varN + 8'h1; repaint = 1; end
				3'h5: begin varN = varN - 8'h1; repaint = 1; end
				endcase
			encR = 3'h0;
			end
		else begin
			if ((encR[1:0] == ~enc) || (encR == 3'h4)) begin
				encR = 3'h4;
				end
			else begin
				if ((encR == 3'h0) && (enc == 2'h2)) begin
					encR[2] = 1;
					end
				encR[1:0] = enc; 
				end
			end	
		if (d_sw == d_sw1) begin
			debounce = debounce + 48'h1;
			end
		else begin
			debounce = 48'h0;
			end
		d_sw1 = d_sw;
		end
	if (counter == 17'h10000) begin
		if (repaint) begin
			stage = 3'h1;
			step = 8'h0;
			e = 0;
			repaint = 0;
			end
		reset2 = reset;
		if (reset1 & ~reset2) begin
			varN = 8'h0;
			stage = 3'h0;
			step = 8'h0;
			e = 0;
			end	
		reset1 = reset2;
		case (stage)
			3'h0: begin // reset
				buzzer <= 0;
				rw <= 0;
				nextstep = (step < 8'h4);
				rs <= 0;
				case (step) 
					8'h0: dat <= 8'h38;
					8'h1: dat <= 8'h0C;
					8'h2: dat <= 8'h06;
					8'h3: dat <= 8'h01; //Clear display
					endcase 
				if (nextstep) begin
					step = step + 8'h1;
					end
				end
			3'h1: begin // repaint
				buzzer <= 0;
				rw <= 0;
				nextstep = (step < 8'h0);
				rs <= 0;
				dat <= `LCD_SETDDRAMADDR | 8'h40;
				end
			3'h2: begin
				nextstep = (step < 8'hF);
				rs <= 1;
				case (step)
					8'h0: dat <= "V";
					8'h1: dat <= "[";
					8'h2: dat <= "0" + varN[7:6];
					8'h3: dat <= "0" + varN[5:3];
					8'h4: dat <= "0" + varN[2:0];
					8'h5: dat <= "]";
					8'h6: dat <= "=";
					8'h7: dat <= varN;
					8'h8: dat <= " ";
					8'h9: dat <= " ";
					8'hA: dat <= " ";
					8'hB: dat <= " ";
					8'hC: dat <= " ";
					8'hD: dat <= "0" + val[2];
					8'hE: dat <= "0" + val[1];				
					8'hF: dat <= "0" + val[0];				
					endcase
				if (nextstep) begin
					step = step + 8'h1;
					end
				end
			3'h3: begin // 1 line
				e = 0;
				rw <= 0;
				rs <= 0;
				nextstep = (step < 8'h0);
				dat <= `LCD_SETDDRAMADDR | 8'h0;
				end
			3'h4: begin
				nextstep = (step < 8'hF);
				rs <= 1;
				case (step)
					8'h0: dat <= "0" + debounce[47:45];			
					8'h1: dat <= "0" + debounce[44:42];				
					8'h2: dat <= "0" + debounce[41:39];
					8'h3: dat <= "0" + debounce[38:36];
					8'h4: dat <= "0" + debounce[35:33];
					8'h5: dat <= "0" + debounce[32:30];
					8'h6: dat <= "0" + debounce[29:27];
					8'h7: dat <= "0" + debounce[26:24];
					8'h8: dat <= "0" + debounce[23:21];
					8'h9: dat <= "0" + debounce[20:18];
					8'hA: dat <= "0" + debounce[17:15];
					8'hB: dat <= "0" + debounce[14:12];
					8'hC: dat <= "0" + debounce[11:9];
					8'hD: dat <= "0" + debounce[8:6];
					8'hE: dat <= "0" + debounce[5:3];
					8'hF: dat <= "0" + debounce[2:0];
					endcase
				if (nextstep) begin
					step = step + 8'h1;
					end
				end
			default: begin
				buzzer <= 1;
				e = 1;
				rw <= 1;
				stage = 3'h3;
				end
			endcase
		if (~nextstep) begin
			nextstep = 1;
			stage = stage + 3'h1;
			step = 8'h0;
			end
		end
end
	
assign en = counter[16] | e;
assign Led[0] = 1;
assign Led[1] = ~d_sw;
assign Led[2] = ~enc[0];
assign Led[3] = ~enc[1];

endmodule  