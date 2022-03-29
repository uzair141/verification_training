/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    handles_and_object.sv                                                               //
// Project Name:   SV OOP Training				                                                             //
// Language:       SystemVerilog			                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     -                                                                              								 //
//       				                                                                                       //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module test();
import pkg::*;

transaction t1_h,t2_h;
BadTr b1_h,b2_h;

initial begin
  t1_h = new();
  t1_h.print();

  b2_h = new();
  b2_h.badCsm = 1;
  b2_h.print();

  t2_h = b2_h;
  t2_h.src = 43;
  t2_h.badCsm = 0;

  b1_h = t1_h;
  b1_h.badCsm = 0;
end
endmodule