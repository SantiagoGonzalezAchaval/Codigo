module sum_1
    #(
        parameter NB_input = 3
    )
    (
        input [NB_input-1:0] e_dato1,
        input [NB_input-1:0] e_dato2,
        output [NB_input:0]   s_sum
    );

    assign s_sum = {1'b0,e_dato1} + {1'b0,e_dato2};
endmodule
   

