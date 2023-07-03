// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\SimulinkCFARHDLWorkflowExampleNew\nfp_convert_single_to_sfix_34_En12.v
// Created: 2023-05-30 17:04:46
// 
// Generated by MATLAB 9.12 and HDL Coder 3.20
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: nfp_convert_single_to_sfix_34_En12
// Source Path: SimulinkCFARHDLWorkflowExampleNew/CFAR Implementation Model/Alpha HDL/nfp_convert_single_to_sfix_34_En12
// Hierarchy Level: 2
// 
// {Latency Strategy = "Zero"}
// 
// {Rounding Mode = Floor}
// {Overflow Mode = Wrap}
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module nfp_convert_single_to_sfix_34_En12
          (nfp_in,
           nfp_out);


  input   [31:0] nfp_in;  // ufix32
  output  signed [33:0] nfp_out;  // sfix34_En12


  wire In1;  // ufix1
  wire [7:0] In2;  // ufix8
  wire [22:0] In3;  // ufix23
  wire Compare_To_Zero1_out1;
  wire [7:0] Constant3_out1;  // uint8
  wire [7:0] Constant2_out1;  // uint8
  wire [7:0] Switch2_out1;  // uint8
  wire signed [8:0] Add_1;  // sfix9
  wire signed [8:0] Add_2;  // sfix9
  wire signed [8:0] alphave;  // sfix9
  wire equality;
  wire Compare_To_Zero_out1;
  wire [23:0] Bit_Concat_out1;  // ufix24
  wire [23:0] Data_Type_Conversion1_out1;  // ufix24_En23
  wire [45:0] Data_Type_Conversion_out1;  // ufix46_En24
  wire signed [9:0] Unary_Minus_in0;  // sfix10
  wire signed [9:0] Unary_Minus_1;  // sfix10
  wire signed [8:0] alphave_1;  // sfix9
  wire signed [8:0] shift_arithmetic1_zerosig;  // sfix9
  wire signed [8:0] shift_arithmetic1_selsig;  // sfix9
  wire signed [8:0] dynamic_shift_zerosig;  // sfix9
  wire signed [8:0] dynamic_shift_selsig;  // sfix9
  wire signed [15:0] dynamic_shift_cast;  // int16
  wire [45:0] Shift_Arithmetic1_out1;  // ufix46_En24
  wire Compare_To_Zero1_out1_1;
  wire Compare_To_Zero_out1_1;
  wire Logical_Operator_out1;
  wire [45:0] Bit_Set_out1;  // ufix46_En24
  wire signed [8:0] shift_arithmetic2_zerosig;  // sfix9
  wire signed [8:0] shift_arithmetic2_selsig;  // sfix9
  wire [45:0] Switch2_out1_1;  // ufix46_En24
  wire [45:0] Data_Type_Conversion1_out1_1;  // ufix46_En24
  wire signed [8:0] dynamic_shift_zerosig_1;  // sfix9
  wire signed [8:0] dynamic_shift_selsig_1;  // sfix9
  wire signed [15:0] dynamic_shift_cast_1;  // int16
  wire [45:0] Shift_Arithmetic2_out1;  // ufix46_En24
  wire [45:0] Switch1_out1;  // ufix46_En24
  wire signed [46:0] Data_Type_Conversion1_out1_2;  // sfix47_En24
  wire signed [47:0] Unary_Minus_cast;  // sfix48_En24
  wire signed [47:0] Unary_Minus_cast_1;  // sfix48_En24
  wire signed [46:0] Unary_Minus_out1;  // sfix47_En24
  wire signed [46:0] Switch1_out1_1;  // sfix47_En24
  wire signed [33:0] Data_Type_Conversion2_out1;  // sfix34_En12


  // Split 32 bit word into FP sign, exponent, mantissa
  assign In1 = nfp_in[31];
  assign In2 = nfp_in[30:23];
  assign In3 = nfp_in[22:0];



  assign Compare_To_Zero1_out1 = In2 != 8'b00000000;



  assign Constant3_out1 = 8'b01111110;



  assign Constant2_out1 = 8'b01111111;



  assign Switch2_out1 = (Compare_To_Zero1_out1 == 1'b0 ? Constant3_out1 :
              Constant2_out1);



  assign Add_1 = {1'b0, In2};
  assign Add_2 = {1'b0, Switch2_out1};
  assign alphave = Add_1 - Add_2;



  assign equality = alphave >= 9'sb000000000;



  assign Compare_To_Zero_out1 = In2 != 8'b00000000;



  assign Bit_Concat_out1 = {Compare_To_Zero_out1, In3};



  assign Data_Type_Conversion1_out1 = Bit_Concat_out1;



  assign Data_Type_Conversion_out1 = {21'b0, {Data_Type_Conversion1_out1, 1'b0}};



  assign Unary_Minus_1 = {alphave[8], alphave};
  assign Unary_Minus_in0 =  - (Unary_Minus_1);
  assign alphave_1 = Unary_Minus_in0[8:0];



  assign shift_arithmetic1_zerosig = 9'sb000000000;



  assign shift_arithmetic1_selsig = (alphave_1 >= shift_arithmetic1_zerosig ? alphave_1 :
              shift_arithmetic1_zerosig);



  assign dynamic_shift_zerosig = 9'sb000000000;



  assign dynamic_shift_selsig = (shift_arithmetic1_selsig >= dynamic_shift_zerosig ? shift_arithmetic1_selsig :
              dynamic_shift_zerosig);



  assign dynamic_shift_cast = {{7{dynamic_shift_selsig[8]}}, dynamic_shift_selsig};
  assign Shift_Arithmetic1_out1 = Data_Type_Conversion_out1 >>> dynamic_shift_cast;



  assign Compare_To_Zero1_out1_1 = Shift_Arithmetic1_out1 == 46'h000000000000;



  assign Compare_To_Zero_out1_1 = Data_Type_Conversion_out1 != 46'h000000000000;



  assign Logical_Operator_out1 = Compare_To_Zero1_out1_1 & Compare_To_Zero_out1_1;



  assign Bit_Set_out1 = Shift_Arithmetic1_out1 | 46'h000000000001;



  assign shift_arithmetic2_zerosig = 9'sb000000000;



  assign shift_arithmetic2_selsig = (alphave >= shift_arithmetic2_zerosig ? alphave :
              shift_arithmetic2_zerosig);



  assign Switch2_out1_1 = (Logical_Operator_out1 == 1'b0 ? Shift_Arithmetic1_out1 :
              Bit_Set_out1);



  assign Data_Type_Conversion1_out1_1 = {21'b0, {Data_Type_Conversion1_out1, 1'b0}};



  assign dynamic_shift_zerosig_1 = 9'sb000000000;



  assign dynamic_shift_selsig_1 = (shift_arithmetic2_selsig >= dynamic_shift_zerosig_1 ? shift_arithmetic2_selsig :
              dynamic_shift_zerosig_1);



  assign dynamic_shift_cast_1 = {{7{dynamic_shift_selsig_1[8]}}, dynamic_shift_selsig_1};
  assign Shift_Arithmetic2_out1 = Data_Type_Conversion1_out1_1 <<< dynamic_shift_cast_1;



  assign Switch1_out1 = (equality == 1'b0 ? Switch2_out1_1 :
              Shift_Arithmetic2_out1);



  assign Data_Type_Conversion1_out1_2 = {1'b0, Switch1_out1};



  assign Unary_Minus_cast = {Data_Type_Conversion1_out1_2[46], Data_Type_Conversion1_out1_2};
  assign Unary_Minus_cast_1 =  - (Unary_Minus_cast);
  assign Unary_Minus_out1 = Unary_Minus_cast_1[46:0];



  assign Switch1_out1_1 = (In1 == 1'b0 ? Data_Type_Conversion1_out1_2 :
              Unary_Minus_out1);



  assign Data_Type_Conversion2_out1 = Switch1_out1_1[45:12];



  assign nfp_out = Data_Type_Conversion2_out1;

endmodule  // nfp_convert_single_to_sfix_34_En12

