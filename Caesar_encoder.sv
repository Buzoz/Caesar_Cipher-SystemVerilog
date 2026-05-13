`timescale 1ns / 1ps
module Caesar_encoder(

            input logic[7:0]    in1,
            input logic[7:0]    shift,
            output logic[7:0]   out1
    );
    
    always_comb 
    begin
            case(in1) inside 
            ["a":"z"]:
                    begin
                        if(in1+shift > "z")
                            out1=in1 + shift - 8'd26;
                        else
                            out1=in1 + shift;
                    end    
            ["A":"Z"]:
                    begin
                        if(in1+shift > "Z")
                            out1=in1 + shift - 8'd26;
                        else
                            out1=in1 + shift;
                    end
                    
             " ": out1= " ";
                default: out1=in1;  
    endcase
    end
endmodule
