// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\SimulinkCFARHDLWorkflowExampleNew\nfp_mul_single.v
// Created: 2023-05-30 17:04:46
// 
// Generated by MATLAB 9.12 and HDL Coder 3.20
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: nfp_mul_single
// Source Path: SimulinkCFARHDLWorkflowExampleNew/CFAR Implementation Model/Alpha HDL/nfp_mul_single
// Hierarchy Level: 2
// 
// {Latency Strategy = "Zero", Denormal Handling = "off"}
// {Mantissa Multiply Strategy = "PartMultiplierPartAddShift"}
// {Part Add Shift Multiplier Size = "18x24"}
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module nfp_mul_single
          (nfp_in1,
           nfp_in2,
           nfp_out);


  input   [31:0] nfp_in1;  // ufix32
  input   [31:0] nfp_in2;  // ufix32
  output  [31:0] nfp_out;  // ufix32


  wire BS;  // ufix1
  wire [7:0] BE;  // ufix8
  wire [22:0] BM;  // ufix23
  wire Compare_To_Constant1_out1;
  wire Compare_To_Zero3_out1;
  wire Logical_Operator1_out1;
  wire AS;  // ufix1
  wire [7:0] AE;  // ufix8
  wire [22:0] AM;  // ufix23
  wire Compare_To_Constant_out1;
  wire Compare_To_Zero2_out1;
  wire Logical_Operator_out1;
  wire Logical_Operator_out1_1;
  wire Switch_out1;
  wire Constant8_out1;  // ufix1
  wire [7:0] Constant6_out1;  // uint8
  wire Logical_Operator3_out1;
  wire Logical_Operator_out1_2;
  wire Compare_To_Zero1_out1;
  wire Constant3_out1;  // ufix1
  wire Constant2_out1;  // ufix1
  wire Switch2_out1;  // ufix1
  wire [23:0] Bit_Concat1_out1;  // ufix24
  wire [23:0] Constant4_out1;  // ufix24
  wire [23:0] Switch3_out1;  // ufix24
  wire [17:0] BitSlice9_out1;  // ufix18
  wire Compare_To_Zero_out1;
  wire Constant1_out1;  // ufix1
  wire Constant_out1;  // ufix1
  wire Switch1_out1;  // ufix1
  wire [23:0] Bit_Concat_out1;  // ufix24
  wire [23:0] Constant5_out1;  // ufix24
  wire [23:0] Switch_out1_1;  // ufix24
  wire [41:0] Product_out1;  // ufix42
  wire [1:0] BitSlice5_out1;  // ufix2
  wire [7:0] DTC6_out1;  // uint8
  wire [25:0] C1_out1;  // ufix26
  wire Constant1_out1_1;
  wire [22:0] Bit_Slice_out1;  // ufix23
  wire [31:0] Sum1_add_temp;  // ufix32
  wire [31:0] Sum1_1;  // ufix32
  wire [31:0] Sum1_2;  // ufix32
  wire [24:0] Sum1_out1;  // ufix25
  wire [25:0] DTC6_out1_1;  // ufix26
  wire [24:0] Bit_Concat2_out1;  // ufix25
  wire [25:0] DTC4_out1;  // ufix26
  wire Bit_Slice1_out1;  // ufix1
  wire [25:0] Bit_Concat1_out1_1;  // ufix26
  wire [25:0] LUT4_out1 [0:3];  // ufix26 [4]
  wire [25:0] Selector5_out1;  // ufix26
  wire [23:0] Bit_Slice3_out1;  // ufix24
  wire [42:0] Sum2_1;  // ufix43
  wire [42:0] Sum2_2;  // ufix43
  wire [42:0] Sum2_out1;  // ufix43
  wire [1:0] Bit_Slice4_out1;  // ufix2
  wire [44:0] Bit_Concat4_out1;  // ufix45
  wire [1:0] BitSlice4_out1;  // ufix2
  wire [7:0] DTC7_out1;  // uint8
  wire [25:0] Selector4_out1;  // ufix26
  wire [1:0] BitSlice1_out1;  // ufix2
  wire [7:0] DTC8_out1;  // uint8
  wire [25:0] Selector3_out1;  // ufix26
  wire [23:0] Bit_Slice1_out1_1;  // ufix24
  wire [31:0] Sum31_add_temp;  // ufix32
  wire [31:0] Sum31_1;  // ufix32
  wire [31:0] Sum31_2;  // ufix32
  wire [26:0] Sum31_out1;  // ufix27
  wire [1:0] Bit_Slice2_out1;  // ufix2
  wire [28:0] Bit_Concat3_out1;  // ufix29
  wire [24:0] Bit_Slice5_out1;  // ufix25
  wire [45:0] FinalSum1_1;  // ufix46
  wire [45:0] FinalSum1_2;  // ufix46
  wire [45:0] FinalSum1_out1;  // ufix46
  wire [3:0] Bit_Slice6_out1;  // ufix4
  wire [49:0] Bit_Concat1_out1_2;  // ufix50
  wire [47:0] Data_Type_Conversion_out1;  // ufix48
  wire Constant1_out1_2;
  wire [48:0] Bit_Concat_out1_1;  // ufix49
  wire Bit_Slice1_out1_2;  // ufix1
  wire Logical_Operator1_out1_1;
  wire Logical_Operator3_out1_1;
  wire Logical_Operator_out1_3;
  wire Logical_Operator2_out1;
  wire [6:0] Constant2_out1_1;  // ufix7
  wire Constant1_out1_3;
  wire Constant3_out1_1;
  wire Switch_out1_2;
  wire [7:0] Bit_Concat1_out1_3;  // uint8
  wire Switch1_out1_1;
  wire [31:0] Subtract_add_temp;  // ufix32
  wire [31:0] Subtract_1;  // ufix32
  wire [31:0] Subtract_2;  // ufix32
  wire [8:0] Subtract_out1;  // ufix9
  wire [7:0] Bit_Concat_out1_2;  // uint8
  wire [31:0] Add1_add_temp;  // ufix32
  wire [31:0] Add1_1;  // ufix32
  wire [31:0] Add1_2;  // ufix32
  wire [8:0] Add1_out1;  // ufix9
  wire signed [31:0] Subtract2_sub_temp;  // sfix32
  wire signed [31:0] Subtract2_1;  // sfix32
  wire signed [31:0] Subtract2_2;  // sfix32
  wire signed [9:0] Subtract2_out1;  // sfix10
  wire signed [9:0] Constant4_out1_1;  // sfix10
  wire signed [9:0] Switch2_out1_1;  // sfix10
  wire signed [9:0] Constant_out1_1;  // sfix10
  wire signed [9:0] Switch1_out1_2;  // sfix10
  wire signed [31:0] Add_add_temp;  // sfix32
  wire signed [31:0] Add_1;  // sfix32
  wire signed [31:0] Add_2;  // sfix32
  wire signed [9:0] Add_out1;  // sfix10
  wire Compare_To_Constant_out1_1;
  wire signed [9:0] Constant1_out1_4;  // sfix10
  wire signed [9:0] Switch2_out1_2;  // sfix10
  wire Compare_To_Constant1_out1_1;
  wire Logical_Operator1_out1_2;
  wire Logical_Operator4_out1;
  wire Logical_Operator7_out1;
  wire Logical_Operator5_out1;
  wire Logical_Operator6_out1;
  wire Logical_Operator8_out1;
  wire Inf_Zero_out1;
  wire Logical_Operator2_out1_1;
  wire Logical_Operator10_out1;
  wire Logical_Operator_out1_4;
  wire Compare_To_Constant_out1_2;
  wire [7:0] Constant1_out1_5;  // uint8
  wire [48:0] Bit_Shift_out1;  // ufix49
  wire [48:0] Switch_out1_3;  // ufix49
  wire [47:0] Bit_Slice_out1_1;  // ufix48
  wire [1:0] Bit_Slice2_out1_1;  // ufix2
  wire Bit_Slice4_out1_1;  // ufix1
  wire [21:0] Bit_Slice1_out1_3;  // ufix22
  wire Bit_Reduce_out1;  // ufix1
  wire Bit_Slice5_out1_1;  // ufix1
  wire Bit_Slice3_out1_1;  // ufix1
  wire Logical_Operator1_out1_3;
  wire Logical_Operator_out1_5;
  wire [22:0] Bit_Slice1_out1_4;  // ufix23
  wire [23:0] Delay2_out1_dtc;  // ufix24
  wire Constant_out1_2;
  wire [31:0] Add_add_temp_1;  // ufix32
  wire [31:0] Add_4;  // ufix32
  wire [31:0] Add_5;  // ufix32
  wire [23:0] Add_out1_1;  // ufix24
  wire [23:0] Switch_out1_4;  // ufix24
  wire Bit_Slice2_out1_2;  // ufix1
  wire [31:0] Add1_add_temp_1;  // ufix32
  wire [31:0] Add1_4;  // ufix32
  wire [31:0] Add1_5;  // ufix32
  wire [7:0] Add1_out1_1;  // uint8
  wire signed [31:0] Add_add_temp_2;  // sfix32
  wire signed [31:0] Add_7;  // sfix32
  wire signed [31:0] Add_8;  // sfix32
  wire [7:0] Add_out1_2;  // uint8
  wire [7:0] Constant1_out1_6;  // uint8
  wire [7:0] Switch1_out1_3;  // uint8
  wire [7:0] Constant4_out1_2;  // uint8
  wire Switch1_out1_4;
  wire [7:0] Switch4_out1;  // uint8
  wire [7:0] Switch6_out1;  // uint8
  wire [22:0] Bit_Slice4_out1_2;  // ufix23
  wire [22:0] Bit_Shift_out1_1;  // ufix23
  wire [22:0] Switch1_out1_5;  // ufix23
  wire [22:0] Constant2_out1_2;  // ufix23
  wire [22:0] Switch2_out1_3;  // ufix23
  wire [22:0] Constant5_out1_1;  // ufix23
  wire [22:0] Bit_Set_out1;  // ufix23
  wire [22:0] Switch7_out1;  // ufix23
  wire [22:0] Switch5_out1;  // ufix23
  wire [31:0] nfp_out_pack;  // ufix32


  // Split 32 bit word into FP sign, exponent, mantissa
  assign BS = nfp_in2[31];
  assign BE = nfp_in2[30:23];
  assign BM = nfp_in2[22:0];



  assign Compare_To_Constant1_out1 = BE == 8'b11111111;



  assign Compare_To_Zero3_out1 = BM != 23'b00000000000000000000000;



  assign Logical_Operator1_out1 = Compare_To_Constant1_out1 & Compare_To_Zero3_out1;



  // Split 32 bit word into FP sign, exponent, mantissa
  assign AS = nfp_in1[31];
  assign AE = nfp_in1[30:23];
  assign AM = nfp_in1[22:0];



  assign Compare_To_Constant_out1 = AE == 8'b11111111;



  assign Compare_To_Zero2_out1 = AM != 23'b00000000000000000000000;



  assign Logical_Operator_out1 = Compare_To_Constant_out1 & Compare_To_Zero2_out1;



  assign Logical_Operator_out1_1 = AS ^ BS;



  assign Switch_out1 = (Logical_Operator_out1 == 1'b0 ? Logical_Operator_out1_1 :
              AS);



  assign Constant8_out1 = 1'b1;



  assign Constant6_out1 = 8'b00000000;



  assign Logical_Operator3_out1 =  ~ Logical_Operator1_out1;



  assign Logical_Operator_out1_2 = Logical_Operator_out1 & Logical_Operator3_out1;



  assign Compare_To_Zero1_out1 = BE == 8'b00000000;



  assign Constant3_out1 = 1'b1;



  assign Constant2_out1 = 1'b0;



  assign Switch2_out1 = (Compare_To_Zero1_out1 == 1'b0 ? Constant3_out1 :
              Constant2_out1);



  assign Bit_Concat1_out1 = {Switch2_out1, BM};



  assign Constant4_out1 = 24'b100000000000000000000000;



  assign Switch3_out1 = (Logical_Operator_out1_2 == 1'b0 ? Bit_Concat1_out1 :
              Constant4_out1);



  assign BitSlice9_out1 = Switch3_out1[23:6];



  assign Compare_To_Zero_out1 = AE == 8'b00000000;



  assign Constant1_out1 = 1'b1;



  assign Constant_out1 = 1'b0;



  assign Switch1_out1 = (Compare_To_Zero_out1 == 1'b0 ? Constant1_out1 :
              Constant_out1);



  assign Bit_Concat_out1 = {Switch1_out1, AM};



  assign Constant5_out1 = 24'b100000000000000000000000;



  assign Switch_out1_1 = (Logical_Operator1_out1 == 1'b0 ? Bit_Concat_out1 :
              Constant5_out1);



  assign Product_out1 = BitSlice9_out1 * Switch_out1_1;



  assign BitSlice5_out1 = Switch3_out1[5:4];



  assign DTC6_out1 = {6'b0, BitSlice5_out1};



  assign C1_out1 = 26'b00000000000000000000000000;



  assign Constant1_out1_1 = 1'b0;



  assign Bit_Slice_out1 = Switch_out1_1[23:1];



  assign Sum1_1 = {8'b0, Switch_out1_1};
  assign Sum1_2 = {9'b0, Bit_Slice_out1};
  assign Sum1_add_temp = Sum1_1 + Sum1_2;
  assign Sum1_out1 = Sum1_add_temp[24:0];



  assign DTC6_out1_1 = {2'b0, Switch_out1_1};



  assign Bit_Concat2_out1 = {Switch_out1_1, Constant1_out1_1};



  assign DTC4_out1 = {1'b0, Bit_Concat2_out1};



  assign Bit_Slice1_out1 = Switch_out1_1[0];



  assign Bit_Concat1_out1_1 = {Sum1_out1, Bit_Slice1_out1};



  assign LUT4_out1[0] = C1_out1;
  assign LUT4_out1[1] = DTC6_out1_1;
  assign LUT4_out1[2] = DTC4_out1;
  assign LUT4_out1[3] = Bit_Concat1_out1_1;

  assign Selector5_out1 = (DTC6_out1 == 8'b00000000 ? LUT4_out1[0] :
              (DTC6_out1 == 8'b00000001 ? LUT4_out1[1] :
              (DTC6_out1 == 8'b00000010 ? LUT4_out1[2] :
              LUT4_out1[3])));



  assign Bit_Slice3_out1 = Selector5_out1[25:2];



  assign Sum2_1 = {1'b0, Product_out1};
  assign Sum2_2 = {19'b0, Bit_Slice3_out1};
  assign Sum2_out1 = Sum2_1 + Sum2_2;



  assign Bit_Slice4_out1 = Selector5_out1[1:0];



  assign Bit_Concat4_out1 = {Sum2_out1, Bit_Slice4_out1};



  assign BitSlice4_out1 = Switch3_out1[3:2];



  assign DTC7_out1 = {6'b0, BitSlice4_out1};



  assign Selector4_out1 = (DTC7_out1 == 8'b00000000 ? LUT4_out1[0] :
              (DTC7_out1 == 8'b00000001 ? LUT4_out1[1] :
              (DTC7_out1 == 8'b00000010 ? LUT4_out1[2] :
              LUT4_out1[3])));



  assign BitSlice1_out1 = Switch3_out1[1:0];



  assign DTC8_out1 = {6'b0, BitSlice1_out1};



  assign Selector3_out1 = (DTC8_out1 == 8'b00000000 ? LUT4_out1[0] :
              (DTC8_out1 == 8'b00000001 ? LUT4_out1[1] :
              (DTC8_out1 == 8'b00000010 ? LUT4_out1[2] :
              LUT4_out1[3])));



  assign Bit_Slice1_out1_1 = Selector3_out1[25:2];



  assign Sum31_1 = {6'b0, Selector4_out1};
  assign Sum31_2 = {8'b0, Bit_Slice1_out1_1};
  assign Sum31_add_temp = Sum31_1 + Sum31_2;
  assign Sum31_out1 = Sum31_add_temp[26:0];



  assign Bit_Slice2_out1 = Selector3_out1[1:0];



  assign Bit_Concat3_out1 = {Sum31_out1, Bit_Slice2_out1};



  assign Bit_Slice5_out1 = Bit_Concat3_out1[28:4];



  assign FinalSum1_1 = {1'b0, Bit_Concat4_out1};
  assign FinalSum1_2 = {21'b0, Bit_Slice5_out1};
  assign FinalSum1_out1 = FinalSum1_1 + FinalSum1_2;



  assign Bit_Slice6_out1 = Bit_Concat3_out1[3:0];



  assign Bit_Concat1_out1_2 = {FinalSum1_out1, Bit_Slice6_out1};



  assign Data_Type_Conversion_out1 = Bit_Concat1_out1_2[47:0];



  assign Constant1_out1_2 = 1'b0;



  assign Bit_Concat_out1_1 = {Data_Type_Conversion_out1, Constant1_out1_2};



  assign Bit_Slice1_out1_2 = Bit_Concat_out1_1[48];



  assign Logical_Operator1_out1_1 = Compare_To_Constant_out1 | Compare_To_Constant1_out1;



  assign Logical_Operator3_out1_1 =  ~ Logical_Operator1_out1_1;



  assign Logical_Operator_out1_3 = Compare_To_Zero_out1 | Compare_To_Zero1_out1;



  assign Logical_Operator2_out1 = Logical_Operator3_out1_1 & Logical_Operator_out1_3;



  assign Constant2_out1_1 = 7'b0111111;



  assign Constant1_out1_3 = 1'b1;



  assign Constant3_out1_1 = 1'b0;



  assign Switch_out1_2 = (Compare_To_Zero_out1 == 1'b0 ? Constant1_out1_3 :
              Constant3_out1_1);



  assign Bit_Concat1_out1_3 = {Constant2_out1_1, Switch_out1_2};



  assign Switch1_out1_1 = (Compare_To_Zero1_out1 == 1'b0 ? Constant1_out1_3 :
              Constant3_out1_1);



  assign Subtract_1 = {24'b0, AE};
  assign Subtract_2 = {24'b0, BE};
  assign Subtract_add_temp = Subtract_1 + Subtract_2;
  assign Subtract_out1 = Subtract_add_temp[8:0];



  assign Bit_Concat_out1_2 = {Constant2_out1_1, Switch1_out1_1};



  assign Add1_1 = {24'b0, Bit_Concat1_out1_3};
  assign Add1_2 = {24'b0, Bit_Concat_out1_2};
  assign Add1_add_temp = Add1_1 + Add1_2;
  assign Add1_out1 = Add1_add_temp[8:0];



  assign Subtract2_1 = {23'b0, Subtract_out1};
  assign Subtract2_2 = {23'b0, Add1_out1};
  assign Subtract2_sub_temp = Subtract2_1 - Subtract2_2;
  assign Subtract2_out1 = Subtract2_sub_temp[9:0];



  assign Constant4_out1_1 = 10'sb0011111111;



  assign Switch2_out1_1 = (Logical_Operator1_out1_1 == 1'b0 ? Subtract2_out1 :
              Constant4_out1_1);



  assign Constant_out1_1 = 10'sb1000000001;



  assign Switch1_out1_2 = (Logical_Operator2_out1 == 1'b0 ? Switch2_out1_1 :
              Constant_out1_1);



  assign Add_1 = {31'b0, Bit_Slice1_out1_2};
  assign Add_2 = {{22{Switch1_out1_2[9]}}, Switch1_out1_2};
  assign Add_add_temp = Add_1 + Add_2;
  assign Add_out1 = Add_add_temp[9:0];



  assign Compare_To_Constant_out1_1 = Add_out1 > 10'sb1110000001;



  assign Constant1_out1_4 = 10'sb1110000000;



  assign Switch2_out1_2 = (Compare_To_Constant_out1_1 == 1'b0 ? Constant1_out1_4 :
              Add_out1);



  assign Compare_To_Constant1_out1_1 = Switch2_out1_2 > 10'sb0001111111;



  assign Logical_Operator1_out1_2 =  ~ Compare_To_Zero3_out1;



  assign Logical_Operator4_out1 = Logical_Operator1_out1_2 & Compare_To_Zero1_out1;



  assign Logical_Operator7_out1 = Logical_Operator4_out1 & Compare_To_Constant_out1;



  assign Logical_Operator5_out1 =  ~ Compare_To_Zero2_out1;



  assign Logical_Operator6_out1 = Logical_Operator5_out1 & Compare_To_Zero_out1;



  assign Logical_Operator8_out1 = Logical_Operator6_out1 & Compare_To_Constant1_out1;



  assign Inf_Zero_out1 = Logical_Operator7_out1 | Logical_Operator8_out1;



  assign Logical_Operator2_out1_1 = Logical_Operator_out1 | Logical_Operator1_out1;



  assign Logical_Operator10_out1 = Inf_Zero_out1 | Logical_Operator2_out1_1;



  assign Logical_Operator_out1_4 = Compare_To_Constant1_out1_1 | Logical_Operator10_out1;



  assign Compare_To_Constant_out1_2 = Switch2_out1_2 < 10'sb1110000001;



  assign Constant1_out1_5 = 8'b01111111;



  assign Bit_Shift_out1 = Bit_Concat_out1_1 >> 8'd1;



  assign Switch_out1_3 = (Bit_Slice1_out1_2 == 1'b0 ? Bit_Concat_out1_1 :
              Bit_Shift_out1);



  assign Bit_Slice_out1_1 = Switch_out1_3[47:0];



  assign Bit_Slice2_out1_1 = Bit_Slice_out1_1[23:22];



  assign Bit_Slice4_out1_1 = Bit_Slice2_out1_1[0];



  assign Bit_Slice1_out1_3 = Bit_Slice_out1_1[21:0];



  assign Bit_Reduce_out1 = (|Bit_Slice1_out1_3[21:0]);



  assign Bit_Slice5_out1_1 = Bit_Slice2_out1_1[1];



  assign Bit_Slice3_out1_1 = Bit_Slice_out1_1[24];



  assign Logical_Operator1_out1_3 = Bit_Slice3_out1_1 | (Bit_Slice4_out1_1 | Bit_Reduce_out1);



  assign Logical_Operator_out1_5 = Bit_Slice5_out1_1 & Logical_Operator1_out1_3;



  assign Bit_Slice1_out1_4 = Bit_Slice_out1_1[46:24];



  assign Delay2_out1_dtc = {1'b0, Bit_Slice1_out1_4};



  assign Constant_out1_2 = 1'b1;



  assign Add_4 = {9'b0, Bit_Slice1_out1_4};
  assign Add_5 = {31'b0, Constant_out1_2};
  assign Add_add_temp_1 = Add_4 + Add_5;
  assign Add_out1_1 = Add_add_temp_1[23:0];



  assign Switch_out1_4 = (Logical_Operator_out1_5 == 1'b0 ? Delay2_out1_dtc :
              Add_out1_1);



  assign Bit_Slice2_out1_2 = Switch_out1_4[23];



  assign Add1_4 = {24'b0, Constant1_out1_5};
  assign Add1_5 = {31'b0, Bit_Slice2_out1_2};
  assign Add1_add_temp_1 = Add1_4 + Add1_5;
  assign Add1_out1_1 = Add1_add_temp_1[7:0];



  assign Add_7 = {24'b0, Add1_out1_1};
  assign Add_8 = {{22{Switch2_out1_2[9]}}, Switch2_out1_2};
  assign Add_add_temp_2 = Add_7 + Add_8;
  assign Add_out1_2 = Add_add_temp_2[7:0];



  assign Constant1_out1_6 = 8'b00000000;



  assign Switch1_out1_3 = (Compare_To_Constant_out1_2 == 1'b0 ? Add_out1_2 :
              Constant1_out1_6);



  assign Constant4_out1_2 = 8'b11111111;



  assign Switch1_out1_4 = (Logical_Operator1_out1 == 1'b0 ? Switch_out1 :
              BS);



  assign Switch4_out1 = (Logical_Operator_out1_4 == 1'b0 ? Switch1_out1_3 :
              Constant4_out1_2);



  assign Switch6_out1 = (Constant8_out1 == 1'b0 ? Constant6_out1 :
              Switch4_out1);



  assign Bit_Slice4_out1_2 = Switch_out1_4[22:0];



  assign Bit_Shift_out1_1 = Bit_Slice4_out1_2 >> 8'd1;



  assign Switch1_out1_5 = (Bit_Slice2_out1_2 == 1'b0 ? Bit_Slice4_out1_2 :
              Bit_Shift_out1_1);



  assign Constant2_out1_2 = 23'b00000000000000000000000;



  assign Switch2_out1_3 = (Compare_To_Constant_out1_2 == 1'b0 ? Switch1_out1_5 :
              Constant2_out1_2);



  assign Constant5_out1_1 = 23'b00000000000000000000000;



  assign Bit_Set_out1 = Switch2_out1_3 | 23'b10000000000000000000000;



  assign Switch7_out1 = (Logical_Operator10_out1 == 1'b0 ? Constant5_out1_1 :
              Bit_Set_out1);



  assign Switch5_out1 = (Logical_Operator_out1_4 == 1'b0 ? Switch2_out1_3 :
              Switch7_out1);



  // Combine FP sign, exponent, mantissa into 32 bit word
  assign nfp_out_pack = {Switch1_out1_4, Switch6_out1, Switch5_out1};



  assign nfp_out = nfp_out_pack;

endmodule  // nfp_mul_single

