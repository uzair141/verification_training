// /////////////////////////////////////////////////////////////////////////////////////////////////////////
// // Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
// //                                                                                                     //
// // Engineers:      M.Uzair Qureshi								                                                      //
// //                                                                                                     //
// // Additional contributions by:                                                                        //
// //                                                                                                     //
// // Create Date:    08-MARCH-2022                                                                       //
// // Design Name:    SV OOP Implementation                                                               //
// // Module Name:    test.svh                                                                            //
// // Project Name:   SV OOP Training				                                                              //
// // Language:       SystemVerilog			                                                                  //
// //                                                                                                     //
// // Description:                                                                                        //
// //     -                                                                              								  //
// //       				                                                                                      //
// //                                                                                                     //
// // Revision Date:                                                                                      //
// //                                                                                                     //
// /////////////////////////////////////////////////////////////////////////////////////////////////////////
module test();
import pkg::*;

BadTr b_h;

initial begin
  b_h = new();
  b_h.calcCsm();
  b_h.print();
  $display(b_h.badCsm);
end
  
endmodule