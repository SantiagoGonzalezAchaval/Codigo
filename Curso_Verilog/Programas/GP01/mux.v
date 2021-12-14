module mux
    #(
        parameter NB_input = 3
    )
    (
        input [NB_input:0] e_mux1,
        input [NB_input:0] e_mux2,
        input [NB_input:0] e_mux3,
        input        [1:0] e_muxsel,
        output reg [NB_input:0]   s_mux
    );

   always @(*)begin
   case (e_muxsel)
       2'b00: s_mux = e_mux1;
       2'b01: s_mux = e_mux2;
       2'b10: s_mux = e_mux3;
       default: s_mux = 4'b0;
   endcase
   end
   endmodule
   