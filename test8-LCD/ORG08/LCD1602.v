//www.21eda.com
//LCD1602
module LCD1602(clk, rs, rw, en, dat);  
	input clk;  
	input reset;
	output buzzer;
	output reg [7:0] dat; 
	output reg rs, rw, en;
	reg [15:0] counter; 
	reg [5:0] next; 
	reg clkr; 
	reg [1:0] cnt; 
	reg e;
	
assign buzzer = reset;
	
always @(posedge clk)      
begin 
	counter = counter + 1; 
	if (counter == 16'h000f)  
		clkr = ~clkr; 
end

always @(posedge clkr) 
begin 
	if (next < 6'd36 && ~reset) begin
		next <= next + 1;
		e <= 0;
		rw <= 0;
		end
	else
		begin
		if (reset) begin
			next <= 6'd00;
			end;
		e <= 1;
		rw <= 1;
		end;
	case (next) 
    6'd00: begin  rs<=0; dat<=8'h31; end  
    6'd01: begin  rs<=0; dat<=8'h0C; end  
    6'd02: begin  rs<=0; dat<=8'h06; end   
    6'd03: begin  rs<=0; dat<=8'h01; end   //Clear display
    6'd04: begin  rs<=1; dat<="0"; end 
    6'd05: begin  rs<=1; dat<="1"; end 
    6'd06: begin  rs<=1; dat<="2"; end 
    6'd07: begin  rs<=1; dat<="3"; end 
    6'd08: begin  rs<=1; dat<="4"; end 
    6'd09: begin  rs<=1; dat<="5"; end 
    6'd10: begin  rs<=1; dat<="6"; end 
    6'd11: begin  rs<=1; dat<="7"; end 
    6'd12: begin  rs<=1; dat<="8"; end 
    6'd13: begin  rs<=1; dat<="9"; end 
    6'd14: begin  rs<=1; dat<="A"; end 
    6'd15: begin  rs<=1; dat<="B"; end 
    6'd16: begin  rs<=1; dat<="C"; end 
    6'd17: begin  rs<=1; dat<="D"; end 
    6'd18: begin  rs<=1; dat<="E"; end 
    6'd19: begin  rs<=1; dat<="F"; end 
    6'd20: begin  rs<=1; dat<="G"; end 
    6'd21: begin  rs<=1; dat<="H"; end 
    6'd22: begin  rs<=1; dat<="I"; end 
    6'd23: begin  rs<=1; dat<="J"; end 
    6'd24: begin  rs<=1; dat<="K"; end 
    6'd25: begin  rs<=1; dat<="L"; end 
    6'd26: begin  rs<=1; dat<="M"; end 
    6'd27: begin  rs<=1; dat<="N"; end 
    6'd28: begin  rs<=1; dat<="O"; end 
    6'd29: begin  rs<=1; dat<="P"; end 
    6'd30: begin  rs<=1; dat<="Q"; end 
    6'd31: begin  rs<=1; dat<="R"; end 
    6'd32: begin  rs<=1; dat<="S"; end 
    6'd33: begin  rs<=1; dat<="T"; end 
    6'd34: begin  rs<=1; dat<="U"; end 
    6'd35: begin  rs<=1; dat<="V"; end 
    6'd36: begin  rs<=0; dat<=8'h00; end 
    endcase 
end

always @(negedge clkr) 
begin 
	en = clkr | e;
end

endmodule  