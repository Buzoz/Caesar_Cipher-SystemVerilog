`timescale 1ns / 1ps
module TOP(
            input logic[7:0]    in1,
            input logic[7:0]    shift,
            input logic[7:0]    in2,
            input logic         sel,
            output logic[7:0]   out 
    );
    logic[7:0] w1;
    logic[7:0] w2;
    
    Caesar_encoder CE(
                        .in1(in1),
                        .shift(shift),
                        .out1(w1)
    );
    Caesar_decoder CD(
                        .in2(in2),
                        .shift(shift),
                        .out2(w2)
    );
    Choice MUX(
                        .in_ec(w1),
                        .in_dec(w2),
                        .sel(sel),
                        .out(out)
    );  
endmodule
