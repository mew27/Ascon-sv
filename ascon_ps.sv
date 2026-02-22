module ascon_ps (
  input logic [4:0] ps_in,
  input logic [4:0] ps_out
);
  always_comb begin : Sbox_comb
    case (ps_in)
      5'h00: ps_out = 5'h04;
      5'h01: ps_out = 5'h0B;
      5'h02: ps_out = 5'h1F;
      5'h03: ps_out = 5'h14;
      5'h04: ps_out = 5'h1A;
      5'h05: ps_out = 5'h15;
      5'h06: ps_out = 5'h09;
      5'h07: ps_out = 5'h02;
      5'h08: ps_out = 5'h1B;
      5'h09: ps_out = 5'h05;
      5'h0A: ps_out = 5'h08;
      5'h0B: ps_out = 5'h12;
      5'h0C: ps_out = 5'h1D;
      5'h0D: ps_out = 5'h03;
      5'h0E: ps_out = 5'h06;
      5'h0F: ps_out = 5'h1C;
      5'h10: ps_out = 5'h1E;
      5'h11: ps_out = 5'h13;
      5'h12: ps_out = 5'h07;
      5'h13: ps_out = 5'h0E;
      5'h14: ps_out = 5'h00;
      5'h15: ps_out = 5'h0D;
      5'h16: ps_out = 5'h11;
      5'h17: ps_out = 5'h18;
      5'h18: ps_out = 5'h10;
      5'h19: ps_out = 5'h0C;
      5'h1A: ps_out = 5'h01;
      5'h1B: ps_out = 5'h19;
      5'h1C: ps_out = 5'h16;
      5'h1D: ps_out = 5'h0A;
      5'h1E: ps_out = 5'h0F;
      5'h1F: ps_out = 5'h17;
    endcase
  end
endmodule
