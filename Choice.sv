`timescale 1ns / 1ps
module Choice(

                input logic[7:0]    in_ec,
                input logic[7:0]    in_dec,
                input logic         sel,
                output logic[7:0]   out 
    );
    
    always_comb 
    begin
            if(sel)
             begin
                    out=in_ec;
             end       
             else begin
                    out=in_dec;
            end            
    end
endmodule
