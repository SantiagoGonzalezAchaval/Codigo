module top
        
        #(
        parameter NB_input  = 3 //todas las señales dependen de este lengh de entrada
        )
        (
        input        [NB_input-1:0] i_data1,
        input        [NB_input-1:0] i_data2,
        input          [NB_input-2:0] i_sel,
        output        [NB_input+3:0] o_data,
        output                   o_overflow,
        input                       i_reset,
        input                         clock
        
    );

    assign                     w_data1 = i_data1;
    assign                     w_data2 = i_data2;
    assign                         w_sel = i_sel;
    wire           [NB_input+3:0]w_odata = o_data;
    wire                   [NB_input+3:0] w_osum2;
    assign               w_overflow = w_osum2[6];
    assign                     w_reset = i_reset;
    wire                     [NB_input:0] w_imux;
    wire                     [NB_input:0] w_omux;
    assign              w_data1m = {1'b0,w_data1}; //concateno 1bit de cero con entradas
    assign              w_data2m = {1'b0,w_data2};
    
    wire                   [NB_input+2:0] w_isum2;
    sum_1 //sumo dos primeras entradas
            
                #(
                    .NB_input (NB_input)
                )
    u_sum_1
                (
                    .e_dato1   (w_data1),
                    .e_dato2   (w_data2),
                    .s_sum      (w_imux)
                );
    sum_2   //sumador final
             u_sum_2
                
                (
                    .e_dato1 (w_omux),
                    .e_dato2 (w_isum2),
                    .s_sum   (w_osum2)
                );
    mux //mux que elije que se envia al siguiente sumador
            
                 #(
                    .NB_input (NB_input)
                )
                u_mux
                (
                    .e_mux1 (w_data1m),
                      .e_mux2 (w_imux),
                    .e_mux3 (w_data2m),
                     .e_muxsel (w_sel),
                       .s_mux (w_omux)
                );
    acum // valor final y overflow
            u_acum
                (
                             .e_sum (w_omux),
                              .e_clk (clock),
                          .e_reset (w_reset),
                          .s_odata (w_odata),
                    .s_overflow (w_overflow),
                          .s_realim(w_isum2)

                );

    assign o_overflow=w_overflow;

endmodule
