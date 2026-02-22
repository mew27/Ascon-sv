module ascon_pc 
#(
  parameter rnd
)
(
  input  logic [7:0] pc_in,
  //input  logic [3:0] rnd,
  output logic [7:0] pc_out
);
 
 reg [7:0] ascon_const;
 
 always_comb begin : constant_selection_comb
   case (rnd)
    'h0 : ascon_const = 8'h3C;
    'h1 : ascon_const = 8'h2D;
    'h2 : ascon_const = 8'h1E;
    'h3 : ascon_const = 8'h0F;
    'h4 : ascon_const = 8'hF0;
    'h5 : ascon_const = 8'hE1;
    'h6 : ascon_const = 8'hD2;
    'h7 : ascon_const = 8'hC3;
    'h8 : ascon_const = 8'hB4;
    'h9 : ascon_const = 8'hA5;
    'hA : ascon_const = 8'h96;
    'hB : ascon_const = 8'h87;
    'hC : ascon_const = 8'h78;
    'hD : ascon_const = 8'h69;
    'hE : ascon_const = 8'h5A;
    'hF : ascon_const = 8'h4B;
   endcase

   pc_out = pc_in ^ ascon_const;
 end

 endmodule
