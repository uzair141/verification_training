/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                      //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    BadTr.svh                                                                           //
// Project Name:   SV OOP Training				                                                              //
// Language:       SystemVerilog			                                                                  //
//                                                                                                     //
// Description:                                                                                        //
//     -                                                                              								  //
//       				                                                                                      //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
class BadTr extends transaction;
  bit badCsm;  
  
  function void calcCsm();
    super.calcCsm();       
    if(badCsm) csm = ~csm; 
  endfunction
  
  function void print();
    $write("BadTr: badCsm=%b ", badCsm);
    super.print();
  endfunction

	function void copy(BadTr rhs_h);
    badCsm = rhs_h.badCsm;
  endfunction

  function transaction clone();
    BadTr b_h;
    b_h = new();
    clone = b_h;
    clone.copy(this);
  endfunction

endclass