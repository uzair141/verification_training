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
//     -                                                                              				         //
//       				                                                                                       //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module test();
transaction t_h;
BadTr b_h,c_h;
initial begin
	b_h = new();
	c_h = b_h.clone();
	t_h = b_h.clone();
	c_h = t_h;
  $cast(c_h, t_h);
  $cast(c_h, b_h.clone());
	
  if ( ! $cast (c_h, b_h.clone())) begin
	$fatal (1, “$cast failed in %m”);
  end

end
endmodule