module ascon_pc (
  input  logic [7:0] pc_in,
  input  logic [3:0] rnd,
  output logic [7:0] pc_out
);
 
 reg [7:0] ascon_const;
 
 always_comb begin : constant_selection_comb
   case (rnd)
    4'h0 : ascon_const = 8'h3C;
    4'h1 : ascon_const = 8'h2D;
    4'h2 : ascon_const = 8'h1E;
    4'h3 : ascon_const = 8'h0F;
    4'h4 : ascon_const = 8'hF0;
    4'h5 : ascon_const = 8'hE1;
    4'h6 : ascon_const = 8'hD2;
    4'h7 : ascon_const = 8'hC3;
    4'h8 : ascon_const = 8'hB4;
    4'h9 : ascon_const = 8'hA5;
    4'hA : ascon_const = 8'h96;
    4'hB : ascon_const = 8'h87;
    4'hC : ascon_const = 8'h78;
    4'hD : ascon_const = 8'h69;
    4'hE : ascon_const = 8'h5A;
    4'hF : ascon_const = 8'h4B;
   endcase

   pc_out = pc_in ^ ascon_const;
 end

 endmodule
