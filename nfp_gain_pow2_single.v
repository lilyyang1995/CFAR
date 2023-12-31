// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\SimulinkCFARHDLWorkflowExampleNew\nfp_gain_pow2_single.v
// Created: 2023-05-30 17:04:46
// 
// Generated by MATLAB 9.12 and HDL Coder 3.20
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: nfp_gain_pow2_single
// Source Path: SimulinkCFARHDLWorkflowExampleNew/CFAR Implementation Model/Alpha HDL/nfp_gain_pow2_single
// Hierarchy Level: 2
// 
// {Latency Strategy = "Zero", Denormal Handling = "off"}
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module nfp_gain_pow2_single
          (nfp_in1,
           nfp_in2,
           nfp_in3,
           nfp_out);


  input   [31:0] nfp_in1;  // ufix32
  input   nfp_in2;  // ufix1
  input   signed [8:0] nfp_in3;  // sfix9
  output  [31:0] nfp_out;  // ufix32


  wire aSign;  // ufix1
  wire [7:0] aExponent;  // ufix8
  wire [22:0] aMantissa;  // ufix23
  wire Logical_Operator1_out1;  // ufix1
  wire Bit_Reduce_out1;  // ufix1
  wire Bit_Reduce1_out1;  // ufix1
  wire Logical_Operator6_out1;  // ufix1
  wire [1:0] Constant_out1;  // ufix2
  wire Bit_Slice_out1;  // ufix1
  wire [9:0] Bit_Concat_out1;  // ufix10
  wire signed [9:0] Data_Type_Conversion_out1;  // sfix10
  wire [9:0] Bit_Concat1_out1;  // ufix10
  wire signed [9:0] Data_Type_Conversion1_out1;  // sfix10
  wire signed [9:0] Add_out1;  // sfix10
  wire Bit_Slice3_out1;  // ufix1
  wire Bit_Slice2_out1;  // ufix1
  wire Logical_Operator_out1;  // ufix1
  wire [7:0] Bit_Slice1_out1;  // ufix8
  wire Logical_Operator4_out1;  // ufix1
  wire Logical_Operator7_out1;  // ufix1
  wire Logical_Operator5_out1;  // ufix1
  wire [1:0] Bit_Concat4_out1;  // ufix2
  wire [3:0] Bit_Concat5_out1;  // ufix4
  wire [7:0] Bit_Concat6_out1;  // ufix8
  wire [7:0] Switch1_out1;  // ufix8
  wire Bit_Reduce2_out1;  // ufix1
  wire Bit_Reduce3_out1;  // ufix1
  wire Logical_Operator8_out1;  // ufix1
  wire Logical_Operator2_out1;  // ufix1
  wire Logical_Operator3_out1;  // ufix1
  wire [22:0] Constant1_out1;  // ufix23
  wire [22:0] Switch_out1;  // ufix23
  wire [31:0] nfp_out_pack;  // ufix32


  // Split 32 bit word into FP sign, exponent, mantissa
  assign aSign = nfp_in1[31];
  assign aExponent = nfp_in1[30:23];
  assign aMantissa = nfp_in1[22:0];



  assign Logical_Operator1_out1 = aSign ^ nfp_in2;



  assign Bit_Reduce_out1 = (&aExponent[7:0]);



  assign Bit_Reduce1_out1 = (|aExponent[7:0]);



  assign Logical_Operator6_out1 =  ~ Bit_Reduce1_out1;



  assign Constant_out1 = 2'b00;



  assign Bit_Slice_out1 = nfp_in3[8];



  assign Bit_Concat_out1 = {Constant_out1, aExponent};



  assign Data_Type_Conversion_out1 = Bit_Concat_out1;



  assign Bit_Concat1_out1 = {Bit_Slice_out1, nfp_in3};



  assign Data_Type_Conversion1_out1 = Bit_Concat1_out1;



  assign Add_out1 = Data_Type_Conversion_out1 + Data_Type_Conversion1_out1;



  assign Bit_Slice3_out1 = Add_out1[9];



  assign Bit_Slice2_out1 = Add_out1[8];



  assign Logical_Operator_out1 = Bit_Slice2_out1 | (Bit_Slice3_out1 | (Bit_Reduce_out1 | Logical_Operator6_out1));



  assign Bit_Slice1_out1 = Add_out1[7:0];



  assign Logical_Operator4_out1 =  ~ Bit_Slice3_out1;



  assign Logical_Operator7_out1 = Bit_Reduce1_out1 & Logical_Operator4_out1;



  assign Logical_Operator5_out1 = Bit_Reduce_out1 | Logical_Operator7_out1;



  assign Bit_Concat4_out1 = {Logical_Operator5_out1, Logical_Operator5_out1};



  assign Bit_Concat5_out1 = {Bit_Concat4_out1, Bit_Concat4_out1};



  assign Bit_Concat6_out1 = {Bit_Concat5_out1, Bit_Concat5_out1};



  assign Switch1_out1 = (Logical_Operator_out1 == 1'b0 ? Bit_Slice1_out1 :
              Bit_Concat6_out1);



  assign Bit_Reduce2_out1 = (&Bit_Slice1_out1[7:0]);



  assign Bit_Reduce3_out1 = (|Bit_Slice1_out1[7:0]);



  assign Logical_Operator8_out1 =  ~ Bit_Reduce3_out1;



  assign Logical_Operator2_out1 =  ~ (Logical_Operator8_out1 | (Logical_Operator6_out1 | (Bit_Reduce2_out1 | (Bit_Slice3_out1 | Bit_Slice2_out1))));



  assign Logical_Operator3_out1 = Bit_Reduce_out1 | Logical_Operator2_out1;



  assign Constant1_out1 = 23'b00000000000000000000000;



  assign Switch_out1 = (Logical_Operator3_out1 == 1'b0 ? Constant1_out1 :
              aMantissa);



  // Combine FP sign, exponent, mantissa into 32 bit word
  assign nfp_out_pack = {Logical_Operator1_out1, Switch1_out1, Switch_out1};



  assign nfp_out = nfp_out_pack;

endmodule  // nfp_gain_pow2_single

