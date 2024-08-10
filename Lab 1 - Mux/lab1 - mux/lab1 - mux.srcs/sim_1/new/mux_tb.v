`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSULB
// Engineer: Jeremy Escamilla
// 
// Create Date: 08/23/2021 10:44:54 PM
// Design Name: Multiplexer Test Bench
// Module Name: mux_tb
// Project Name: Lab 1 - Multiplexer
//
// Description: 
//  Tests the Multiplexer module
// Dependencies: 
//  Requires a 'mux.v' to test as the UUT
//
// Revision:
// Revision 0.01 - File Created
//
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_tb(

    );
    
    //Inputs
    reg In0, In1, In2, In3;
    reg [1:0] sel;
    
    //Outputs
    wire Out;
    
    mux uut (
      .In0(In0), .In1(In1), .In2(In2), .In3(In3),
      .sel(sel),
      .Out(Out)
      );//end UUT
      
    initial
     begin //begin simulation
     
        //Step 1 : Initialization
        In0 = 1'b0; In1 = 1'b0; In2 = 1'b0; In3 = 1'b0;
        sel = 2'd0;
        //Step 2: Wait for 100ns for global reset
        #100;
        
        //Step 3: Commence Tests via Stimulus
        //   Step 3a: "Walking Ones" test
        #100 sel = 2'd0; In0 = 1'b1;
        #100 sel = 2'd1; In0 = 1'b0; In1 = 1'b1;
        #100 sel = 2'd2; In1 = 1'b0; In2 = 1'b1;
        #100 sel = 2'd3; In2 = 1'b0; In3 = 1'b1;
        //   Step 3b: "Walking Zeroes" test
        #100 sel = 2'd0; In0 = 1'b0; In1 = 1'b1; In2 = 1'b1; //In3 should already be 1 thanks to prior test.
        #100 sel = 2'd1; In0 = 1'b1; In1 = 1'b0;
        #100 sel = 2'd2; In1 = 1'b1; In2 = 1'b0;
        #100 sel = 2'd3; In2 = 1'b1; In3 = 1'b0;
        //   Step 3c: Reset all inputs 
        #100 sel = 2'd0; In0 = 1'b0; In1 = 1'b0; In2 = 1'b0; //In3 should already be 0 thanks to prior test.
        
     end //end simulation
endmodule
