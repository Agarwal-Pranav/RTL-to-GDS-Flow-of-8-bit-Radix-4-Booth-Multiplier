module Radix4_TB();
    reg              clk;
    reg              rst_n;   // active-low reset
    reg signed [7:0] A;       // multiplicand
    reg signed [7:0] Q;       // multiplier
    wire  signed [15:0] P;       // product
    wire done;
    
    Radix_4_8bit R_1(clk,rst_n,A,Q,P,done);
    
 always begin
    clk = 1; #10;  // High for 30ns
    clk = 0; #10;  // Low for 30ns
end

initial begin
$dumpfile("Radix.vcd");
$dumpvars(0,Radix4_TB);
end
     
 initial begin
     rst_n = 0;
#30
A = 8'b11110101;//-11
Q=  8'b00011011;//+27
rst_n=1;
#20
#30
#200
#400

$finish;

end  
endmodule

