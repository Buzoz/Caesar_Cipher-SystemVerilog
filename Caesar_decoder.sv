`timescale 1ns / 1ps
module Caesar_decoder(
            input logic[7:0]    in2,
            input logic[7:0]    shift,
            output logic[7:0]   out2
    );
    
    always_comb 
    begin
            case(in2) inside 
            ["a":"z"]:
                    begin
                        if(in2-shift < "a")
                            out2=in2 - shift + 8'd26;
                        else
                            out2=in2 - shift;
                    end    
            ["A":"Z"]:
                    begin
                        if(in2-shift < "A")
                            out2=in2 - shift + 8'd26;
                        else
                            out2=in2 - shift;
                    end
                    
             " ": out2= " ";
                default: out2=in2;  
    endcase
    end
endmodule
