module ascon_pl 
#(
  parameter i,
)
(
  input  logic [63:0] pl_in
  output logic [63:0] pl_out
);

function automatic logic [63:0] rotate_right (logic [63:0] rot_in, integer amnt)
  rotate = (rot_in << (64 - amnt)) | (rot_in >> amnt);
endfunction

always_comb begin : Linear_Diffusion_Comb
  case (i)
    0 : pl_out = pl_in ^ rotate_right(pl_in, 19) ^ rotate_right(pl_in, 28);
    1 : pl_out = pl_in ^ rotate_right(pl_in, 61) ^ rotate_right(pl_in, 39);
    2 : pl_out = pl_in ^ rotate_right(pl_in, 01) ^ rotate_right(pl_in, 06);
    3 : pl_out = pl_in ^ rotate_right(pl_in, 10) ^ rotate_right(pl_in, 17);
    4 : pl_out = pl_in ^ rotate_right(pl_in, 07) ^ rotate_right(pl_in, 41);
  endcase
end

endmodule
