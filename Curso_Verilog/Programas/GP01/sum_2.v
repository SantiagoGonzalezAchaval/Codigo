module sum_2
    #(
        parameter NB_INPUT = 3
    )
    (
        output  [NB_INPUT+3     :0]  s_sum,
        input   [NB_INPUT   :0]  e_dato1,
        input   [NB_INPUT+2   :0]  e_dato2
    );
    assign s_sum = {1'b000,e_dato1} + {1'b0,e_dato2};

endmodule