module ascon_ps (
  input logic [4:0] ps_in,
  input logic [4:0] ps_out
);
  always_comb begin : Sbox_comb
    case (ps_in)
      5'h0: ps_out = 5'h04;
      5'h1: ps_out = 5'h0B;
      5'h2: ps_out = 5'h1F;
      5'h3: ps_out = 5'h14;
      5'h4: ps_out = 5'h1A;
      5'h5: ps_out = 5'h15;
      5'h6: ps_out = 5'h09;
      5'h7: ps_out = 5'h02;
      5'h8: ps_out = 5'h1B;
    endcase
  end
endmodule
