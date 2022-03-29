/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    test_cast.sv                                                                        //
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
  transaction t3_h;
  BadTr b3_h,b4_h;

initial begin
  b3_h = new();
  b3_h.badCsm = 1;
  b3_h.print();

  t3_h = b3_h;

  //b4_h = t3_h;
  $cast(b4_h,t3_h);

  $display(b4_h.badCsm);
end
endmodule