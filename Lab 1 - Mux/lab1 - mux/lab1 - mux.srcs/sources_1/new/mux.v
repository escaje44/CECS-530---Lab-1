`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSULB
// Engineer: Jeremy Escamilla
// 
// Create Date: 08/23/2021 10:36:26 PM
// Design Name: Multiplexer Module
// Module Name: mux
// Project Name: Lab 1 - Multiplexer
//
// Description: 
//  Multiplexer: Takes in 4 inputs and a 2 bit selector. Based on selector value, Output Register takes
//               value of one of the inputs.
// 
// Dependencies: 
//  Requires values of all inputs to NOT be XXX (un-initialized) or ZZZ (floating values) to function properly.
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux(
    //set up inputs, outputs
    input In0,
    input In1,
    input In2,
    input In3,
    input [1:0] sel, //2 bit selector for 4 inputs
    output reg Out //register output
    );
    
    always@(In0, In1, In2, In3, sel)
    case(sel) //selects what input value output register takes
      2'd0: Out <= In0;
      2'd1: Out <= In1;
      2'd2: Out <= In2;
      2'd3: Out <= In3;
      default: Out <= In0;
    endcase
    
endmodule
