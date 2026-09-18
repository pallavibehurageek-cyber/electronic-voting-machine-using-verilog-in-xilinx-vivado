`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2026 16:45:38
// Design Name: 
// Module Name: votingmachine_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module votingmachine_testbench;

// inputs
reg clock;
reg reset;
reg mode;
reg button1;
reg button2;
reg button3;
reg button4;

// outputs

wire [7:0] led;
 // instantiate the unit under test 
 
 votingMachine uut (
 
 .clock(clock),
 .reset(reset),
 .mode(mode),
 .button1(button1),
 .button2(button2),
 .button3(button3),
 .button4(button4),
 .led(led)
 );
 
 initial begin
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
  // initialize inputs
  reset =1; mode = 0; button1 =0; button2 = 0; button3 =0; button4 = 0;
  // wait for overall reset to finish
  #100;
  
  // add stimulus now
  #100 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
  #5 reset = 0; mode = 0; button1 =1; button2 =0; button3 =0; button4 = 0;
  #10 reset =0; mode =0; button1 =0; button2 =0; button3 =0; button4 =0;
  #5  reset = 0; mode = 0; button1 =1; button2 =0; button3 =0; button4 = 0;
  #200  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #5  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #10  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #5  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  
  #5 reset = 0; mode = 0; button1 =0; button2 =1; button3 =0; button4 = 0;
  #200 reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #5 reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #10  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #5 reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  
  #5  reset = 0; mode = 0; button1 =0; button2 =1; button3 =1; button4 = 0;
  #200  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #5  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #10  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #5  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  
  #5  reset = 0; mode = 1; button1 =0; button2 =1; button3 =0; button4 = 0;
  #200  reset = 0; mode = 1; button1 =0; button2 =0; button3 =1; button4 = 0;
  #5  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #10  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #5  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  
  #5  reset = 0; mode = 0; button1 =0; button2 =0; button3 =1; button4 = 0;
  #200  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #5  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #10  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  #5  reset = 0; mode = 0; button1 =0; button2 =0; button3 =0; button4 = 0;
  
  $finish;
  
  end
  
initial
begin
$dumpfile("dump.vcd");
$dumpvars(0, votingmachine_testbench);


end

initial
begin
$monitor($time, "mode =%b, button1 = %b, button2 = %b, button3 = %b, button4 = %b, led = %h", mode,button1, button2,button3, button4, led);
end
endmodule
