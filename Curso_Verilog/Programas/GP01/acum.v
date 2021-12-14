module acum
    #(
        parameter NB_INPUT= 3
    )
    (
        input [NB_INPUT :0]  e_sum,
        input                  e_clk, 
        input                  e_reset, 
        output reg [NB_INPUT+3 :0]  s_odata,  
        output reg              s_overflow,
        output reg[NB_INPUT+2 :0]  s_realim
    );
    reg [NB_INPUT +3 : 0] regg;    
    always @(posedge e_clk) begin
        if (e_reset) 
        begin
           regg <= 7'b0;
        end
        if (s_odata[6]) 
        begin
            regg <= 7'b0;
        end
        regg       <= regg + e_sum; 
        s_realim   <= s_odata[NB_INPUT-1:0];
        s_odata    <= regg[NB_INPUT+3:0];
        s_overflow <= regg[NB_INPUT+3];
    end 
    endmodule