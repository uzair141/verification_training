/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    test.sv                                                                             //
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

  transaction tr_h;
  badTr b_h;
  Basetest c_h;
  Badtest d_h;
  initial begin
    tr_h  = new();
    tr_h.calcCsm();
    tr_h.print();
    b_h = new();
    b_h.calcCsm();
    b_h.print();
    b_h.badCsm = 1;
    b_h.calcCsm();
    b_h.print();
    $display(b_h.badCsm);
    c_h = new();
    c_h.run();
    d_h = new();
    d_h.run();

  end
  
endmodule