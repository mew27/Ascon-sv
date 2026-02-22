module ascon;
`timescale 1ns/1ps

reg [7:0] pc_in;
reg [7:0] pc_out;

reg [3:0] rnd;

ascon_pc ascon_pc_inst(
  .pc_in(pc_in),
  .pc_out(pc_out),
  .rnd(rnd)
  );

initial begin
  pc_in = 8'hF;
  rnd = 4'b10;
  $display("Hello World in System Verilog!");
  #10;
  $display("Rnd = 0x%0h ; Pc_out = 0x%0h", rnd, pc_out);
  #10;
  $finish;
end  


endmodule
