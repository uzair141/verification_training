/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    BadTr.svh                                                                           //
// Project Name:   SV OOP Training				                                                             //
// Language:       SystemVerilog			                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     -                                                                              				         //
//       				                                                                                       //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
class BadTr extends transaction; 
	bit c;  
	virtual function void copy (transaction rhs_h);
	BadTr b_h;
  if ( ! $cast(b_h, rhs_h)) $fatal;
  super.copy (rhs_h);
  c = b_h.c	
	endfunction

	virtual function transaction clone();
		BadTr b_h;
		b_h = new();
		clone = b_h;	
    clone.copy(this); 
endfunction
endclass 
