//`timescale 1ns
import myPkg;

module tb_fir ();

   wire CLK_i;
   wire RST_n_i;
   wire [nb-1:0] DIN_i;
   wire VIN_i;
   wire [nb-1:0] H0_i;	//a0
   wire [nb-1:0] H1_i;	//a1
   wire [nb-1:0] H2_i;	//b0
   wire [nb-1:0] H3_i;	//b1
   wire [nb-1:0] DOUT_i;
   wire VOUT_i;
   wire END_SIM_i;

   clk_gen CG(.END_SIM(END_SIM_i),
  	      .CLK(CLK_i),
	      .RST_n(RST_n_i));

   data_maker SM(.CLK(CLK_i),
	     .RST_n(RST_n_i),
		 .VOUT(VIN_i),
		 .DOUT(DIN_i),
		 .H0(H0_i),
		 .H1(H1_i),
		 .H2(H2_i),
		 .H3(H3_i),
		 .END_SIM(END_SIM_i));

   myfir UUT(.CLK(CLK_i),
	     .RST_n(RST_n_i),
	     .DIN(DIN_i),
         .VIN(VIN_i),
	     .a0(H0_i),
	     .a1(H1_i),
	     .b0(H2_i),
	     .b1(H3_i),
         .DOUT(DOUT_i),
         .VOUT(VOUT_i));

   data_sink DS(.CLK(CLK_i),
		.RST_n(RST_n_i),
		.VIN(VOUT_i),
		.DIN(DOUT_i));   

endmodule

		   
