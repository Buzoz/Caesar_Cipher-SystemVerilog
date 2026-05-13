`timescale 1ns / 1ps
module TOP_TB();

logic[7:0]    in1;
logic[7:0]    shift;
logic[7:0]    in2;
logic         sel;
logic[7:0]    out;


TOP TOP_TB(
            .in1(in1),
            .shift(shift),
            .in2(in2),
            .sel(sel),  
            .out(out)
          );
          
 initial
 begin
        in1="a";
        shift=3;
        sel=1;
        #20;
        
        in1="c";
        shift=3;
        sel=1;
        #20;
        
        in2="d";
        shift=3;
        sel=0;
        #20;
        
        $stop;
 end               
endmodule
