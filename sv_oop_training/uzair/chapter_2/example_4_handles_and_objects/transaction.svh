/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    transaction.svh                                                                     //
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
class transaction;
	bit [31:0] src, dst, csm, data[8];
	
	function void calcCsm();
		csm = src ^ dst ^data.xor();
	endfunction

	function void print();
		$display("Tr: src=%h, dst=%h, csm=%h, data=%p", src, dst, csm, data);
	endfunction

	function void copy(transaction rhs_h);
		src  = rhs_h.src;
		dst  = rhs_h.dst;
		data = rhs_h.data;
		csm  = rhs_h.csm;
	endfunction

	function transaction clone();
		clone = new();
		clone.copy(this);
	endfunction
	
endclass