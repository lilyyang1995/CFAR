// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\SimulinkCFARHDLWorkflowExampleNew\CFAR_Core.v
// Created: 2023-05-30 17:04:47
// 
// Generated by MATLAB 9.12 and HDL Coder 3.20
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: CFAR_Core
// Source Path: SimulinkCFARHDLWorkflowExampleNew/CFAR Implementation Model/CFAR Core
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module CFAR_Core
          (clk,
           reset,
           enb,
           SQR_LAW,
           CUTIdx_in,
           Alpha,
           ValidIn,
           Threshold,
           Detection,
           ValidOut);


  input   clk;
  input   reset;
  input   enb;
  input   signed [31:0] SQR_LAW;  // sfix34_En12
  input   signed [15:0] CUTIdx_in;  // int16
  input   signed [33:0] Alpha;  // sfix34_En12
  input   ValidIn;
 (* mark_debug = "true" *) output  signed [33:0] Threshold;  // sfix34_En12
 (* mark_debug = "true" *) output  Detection;
  output  ValidOut;


  wire signed [33:0] Training_HDL_out1;  // sfix34_En12
  reg signed [33:0] Delay1_reg [0:1];  // sfix34 [2]
  wire signed [33:0] Delay1_reg_next [0:1];  // sfix34_En12 [2]
  wire signed [33:0] Delay1_out1;  // sfix34_En12
  reg signed [33:0] Delay2_reg [0:12];  // sfix34 [13]
  wire signed [33:0] Delay2_reg_next [0:12];  // sfix34_En12 [13]
  wire signed [33:0] Delay2_out1;  // sfix34_En12
  wire signed [67:0] Product1_mul_temp;  // sfix68_En24
  wire signed [33:0] Product1_out1;  // sfix34_En12
  reg signed [33:0] Delay13_reg [0:1];  // sfix34 [2]
  wire signed [33:0] Delay13_reg_next [0:1];  // sfix34_En12 [2]
  wire signed [33:0] Delay13_out1;  // sfix34_En12
  reg signed [33:0] Delay11_out1;  // sfix34_En12
  wire signed [33:0] CUT;  // sfix34_En12
  reg signed [33:0] Delay12_reg [0:14];  // sfix34 [15]
  wire signed [33:0] Delay12_reg_next [0:14];  // sfix34_En12 [15]
  wire signed [33:0] Delay12_out1;  // sfix34_En12
  wire Detection_Device1_relop1;
  wire Detection_1;
  reg  Delay15_out1;
  reg  [0:217] Delay16_reg;  // ufix1 [218]
  wire [0:217] Delay16_reg_next;  // ufix1 [218]
  wire Delay16_out1;


  Training_HDL u_Training_HDL (.clk(clk),
                               .reset(reset),
                               .enb(enb),
                               .SQR_LAW(SQR_LAW),  // sfix34_En12
                               .CUTIdx_in(CUTIdx_in),  // int16
                               .Noise_Power(Training_HDL_out1)  // sfix34_En12
                               );

  always @(posedge clk or posedge reset)
    begin : Delay1_process
      if (reset == 1'b1) begin
        Delay1_reg[0] <= 34'sh000000000;
        Delay1_reg[1] <= 34'sh000000000;
      end
      else begin
        if (enb) begin
          Delay1_reg[0] <= Delay1_reg_next[0];
          Delay1_reg[1] <= Delay1_reg_next[1];
        end
      end
    end

  assign Delay1_out1 = Delay1_reg[1];
  assign Delay1_reg_next[0] = Training_HDL_out1;
  assign Delay1_reg_next[1] = Delay1_reg[0];



  always @(posedge clk or posedge reset)
    begin : Delay2_process
      if (reset == 1'b1) begin
        Delay2_reg[0] <= 34'sh000000000;
        Delay2_reg[1] <= 34'sh000000000;
        Delay2_reg[2] <= 34'sh000000000;
        Delay2_reg[3] <= 34'sh000000000;
        Delay2_reg[4] <= 34'sh000000000;
        Delay2_reg[5] <= 34'sh000000000;
        Delay2_reg[6] <= 34'sh000000000;
        Delay2_reg[7] <= 34'sh000000000;
        Delay2_reg[8] <= 34'sh000000000;
        Delay2_reg[9] <= 34'sh000000000;
        Delay2_reg[10] <= 34'sh000000000;
        Delay2_reg[11] <= 34'sh000000000;
        Delay2_reg[12] <= 34'sh000000000;
      end
      else begin
        if (enb) begin
          Delay2_reg[0] <= Delay2_reg_next[0];
          Delay2_reg[1] <= Delay2_reg_next[1];
          Delay2_reg[2] <= Delay2_reg_next[2];
          Delay2_reg[3] <= Delay2_reg_next[3];
          Delay2_reg[4] <= Delay2_reg_next[4];
          Delay2_reg[5] <= Delay2_reg_next[5];
          Delay2_reg[6] <= Delay2_reg_next[6];
          Delay2_reg[7] <= Delay2_reg_next[7];
          Delay2_reg[8] <= Delay2_reg_next[8];
          Delay2_reg[9] <= Delay2_reg_next[9];
          Delay2_reg[10] <= Delay2_reg_next[10];
          Delay2_reg[11] <= Delay2_reg_next[11];
          Delay2_reg[12] <= Delay2_reg_next[12];
        end
      end
    end

  assign Delay2_out1 = Delay2_reg[12];
  assign Delay2_reg_next[0] = Alpha;
  assign Delay2_reg_next[1] = Delay2_reg[0];
  assign Delay2_reg_next[2] = Delay2_reg[1];
  assign Delay2_reg_next[3] = Delay2_reg[2];
  assign Delay2_reg_next[4] = Delay2_reg[3];
  assign Delay2_reg_next[5] = Delay2_reg[4];
  assign Delay2_reg_next[6] = Delay2_reg[5];
  assign Delay2_reg_next[7] = Delay2_reg[6];
  assign Delay2_reg_next[8] = Delay2_reg[7];
  assign Delay2_reg_next[9] = Delay2_reg[8];
  assign Delay2_reg_next[10] = Delay2_reg[9];
  assign Delay2_reg_next[11] = Delay2_reg[10];
  assign Delay2_reg_next[12] = Delay2_reg[11];



  assign Product1_mul_temp = Delay1_out1 * Delay2_out1;
  assign Product1_out1 = Product1_mul_temp[45:12];



  always @(posedge clk or posedge reset)
    begin : Delay13_process
      if (reset == 1'b1) begin
        Delay13_reg[0] <= 34'sh000000000;
        Delay13_reg[1] <= 34'sh000000000;
      end
      else begin
        if (enb) begin
          Delay13_reg[0] <= Delay13_reg_next[0];
          Delay13_reg[1] <= Delay13_reg_next[1];
        end
      end
    end

  assign Delay13_out1 = Delay13_reg[1];
  assign Delay13_reg_next[0] = Product1_out1;
  assign Delay13_reg_next[1] = Delay13_reg[0];



  always @(posedge clk or posedge reset)
    begin : Delay11_process
      if (reset == 1'b1) begin
        Delay11_out1 <= 34'sh000000000;
      end
      else begin
        if (enb) begin
          Delay11_out1 <= Delay13_out1;
        end
      end
    end



  assign Threshold = Delay11_out1;

  CUT_HDL u_CUT_HDL (.clk(clk),
                     .reset(reset),
                     .enb(enb),
                     .SQR_LAW(SQR_LAW),  // sfix34_En12
                     .CUT(CUT)  // sfix34_En12
                     );

  always @(posedge clk or posedge reset)
    begin : Delay12_process
      if (reset == 1'b1) begin
        Delay12_reg[0] <= 34'sh000000000;
        Delay12_reg[1] <= 34'sh000000000;
        Delay12_reg[2] <= 34'sh000000000;
        Delay12_reg[3] <= 34'sh000000000;
        Delay12_reg[4] <= 34'sh000000000;
        Delay12_reg[5] <= 34'sh000000000;
        Delay12_reg[6] <= 34'sh000000000;
        Delay12_reg[7] <= 34'sh000000000;
        Delay12_reg[8] <= 34'sh000000000;
        Delay12_reg[9] <= 34'sh000000000;
        Delay12_reg[10] <= 34'sh000000000;
        Delay12_reg[11] <= 34'sh000000000;
        Delay12_reg[12] <= 34'sh000000000;
        Delay12_reg[13] <= 34'sh000000000;
        Delay12_reg[14] <= 34'sh000000000;
      end
      else begin
        if (enb) begin
          Delay12_reg[0] <= Delay12_reg_next[0];
          Delay12_reg[1] <= Delay12_reg_next[1];
          Delay12_reg[2] <= Delay12_reg_next[2];
          Delay12_reg[3] <= Delay12_reg_next[3];
          Delay12_reg[4] <= Delay12_reg_next[4];
          Delay12_reg[5] <= Delay12_reg_next[5];
          Delay12_reg[6] <= Delay12_reg_next[6];
          Delay12_reg[7] <= Delay12_reg_next[7];
          Delay12_reg[8] <= Delay12_reg_next[8];
          Delay12_reg[9] <= Delay12_reg_next[9];
          Delay12_reg[10] <= Delay12_reg_next[10];
          Delay12_reg[11] <= Delay12_reg_next[11];
          Delay12_reg[12] <= Delay12_reg_next[12];
          Delay12_reg[13] <= Delay12_reg_next[13];
          Delay12_reg[14] <= Delay12_reg_next[14];
        end
      end
    end

  assign Delay12_out1 = Delay12_reg[14];
  assign Delay12_reg_next[0] = CUT;
  assign Delay12_reg_next[1] = Delay12_reg[0];
  assign Delay12_reg_next[2] = Delay12_reg[1];
  assign Delay12_reg_next[3] = Delay12_reg[2];
  assign Delay12_reg_next[4] = Delay12_reg[3];
  assign Delay12_reg_next[5] = Delay12_reg[4];
  assign Delay12_reg_next[6] = Delay12_reg[5];
  assign Delay12_reg_next[7] = Delay12_reg[6];
  assign Delay12_reg_next[8] = Delay12_reg[7];
  assign Delay12_reg_next[9] = Delay12_reg[8];
  assign Delay12_reg_next[10] = Delay12_reg[9];
  assign Delay12_reg_next[11] = Delay12_reg[10];
  assign Delay12_reg_next[12] = Delay12_reg[11];
  assign Delay12_reg_next[13] = Delay12_reg[12];
  assign Delay12_reg_next[14] = Delay12_reg[13];



  assign Detection_Device1_relop1 = Delay12_out1 >= Delay13_out1;



  assign Detection_1 = Detection_Device1_relop1;

  always @(posedge clk or posedge reset)
    begin : Delay15_process
      if (reset == 1'b1) begin
        Delay15_out1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay15_out1 <= Detection_1;
        end
      end
    end



  assign Detection = Delay15_out1;

  always @(posedge clk or posedge reset)
    begin : Delay16_process
      if (reset == 1'b1) begin
        Delay16_reg[0] <= 1'b0;
        Delay16_reg[1] <= 1'b0;
        Delay16_reg[2] <= 1'b0;
        Delay16_reg[3] <= 1'b0;
        Delay16_reg[4] <= 1'b0;
        Delay16_reg[5] <= 1'b0;
        Delay16_reg[6] <= 1'b0;
        Delay16_reg[7] <= 1'b0;
        Delay16_reg[8] <= 1'b0;
        Delay16_reg[9] <= 1'b0;
        Delay16_reg[10] <= 1'b0;
        Delay16_reg[11] <= 1'b0;
        Delay16_reg[12] <= 1'b0;
        Delay16_reg[13] <= 1'b0;
        Delay16_reg[14] <= 1'b0;
        Delay16_reg[15] <= 1'b0;
        Delay16_reg[16] <= 1'b0;
        Delay16_reg[17] <= 1'b0;
        Delay16_reg[18] <= 1'b0;
        Delay16_reg[19] <= 1'b0;
        Delay16_reg[20] <= 1'b0;
        Delay16_reg[21] <= 1'b0;
        Delay16_reg[22] <= 1'b0;
        Delay16_reg[23] <= 1'b0;
        Delay16_reg[24] <= 1'b0;
        Delay16_reg[25] <= 1'b0;
        Delay16_reg[26] <= 1'b0;
        Delay16_reg[27] <= 1'b0;
        Delay16_reg[28] <= 1'b0;
        Delay16_reg[29] <= 1'b0;
        Delay16_reg[30] <= 1'b0;
        Delay16_reg[31] <= 1'b0;
        Delay16_reg[32] <= 1'b0;
        Delay16_reg[33] <= 1'b0;
        Delay16_reg[34] <= 1'b0;
        Delay16_reg[35] <= 1'b0;
        Delay16_reg[36] <= 1'b0;
        Delay16_reg[37] <= 1'b0;
        Delay16_reg[38] <= 1'b0;
        Delay16_reg[39] <= 1'b0;
        Delay16_reg[40] <= 1'b0;
        Delay16_reg[41] <= 1'b0;
        Delay16_reg[42] <= 1'b0;
        Delay16_reg[43] <= 1'b0;
        Delay16_reg[44] <= 1'b0;
        Delay16_reg[45] <= 1'b0;
        Delay16_reg[46] <= 1'b0;
        Delay16_reg[47] <= 1'b0;
        Delay16_reg[48] <= 1'b0;
        Delay16_reg[49] <= 1'b0;
        Delay16_reg[50] <= 1'b0;
        Delay16_reg[51] <= 1'b0;
        Delay16_reg[52] <= 1'b0;
        Delay16_reg[53] <= 1'b0;
        Delay16_reg[54] <= 1'b0;
        Delay16_reg[55] <= 1'b0;
        Delay16_reg[56] <= 1'b0;
        Delay16_reg[57] <= 1'b0;
        Delay16_reg[58] <= 1'b0;
        Delay16_reg[59] <= 1'b0;
        Delay16_reg[60] <= 1'b0;
        Delay16_reg[61] <= 1'b0;
        Delay16_reg[62] <= 1'b0;
        Delay16_reg[63] <= 1'b0;
        Delay16_reg[64] <= 1'b0;
        Delay16_reg[65] <= 1'b0;
        Delay16_reg[66] <= 1'b0;
        Delay16_reg[67] <= 1'b0;
        Delay16_reg[68] <= 1'b0;
        Delay16_reg[69] <= 1'b0;
        Delay16_reg[70] <= 1'b0;
        Delay16_reg[71] <= 1'b0;
        Delay16_reg[72] <= 1'b0;
        Delay16_reg[73] <= 1'b0;
        Delay16_reg[74] <= 1'b0;
        Delay16_reg[75] <= 1'b0;
        Delay16_reg[76] <= 1'b0;
        Delay16_reg[77] <= 1'b0;
        Delay16_reg[78] <= 1'b0;
        Delay16_reg[79] <= 1'b0;
        Delay16_reg[80] <= 1'b0;
        Delay16_reg[81] <= 1'b0;
        Delay16_reg[82] <= 1'b0;
        Delay16_reg[83] <= 1'b0;
        Delay16_reg[84] <= 1'b0;
        Delay16_reg[85] <= 1'b0;
        Delay16_reg[86] <= 1'b0;
        Delay16_reg[87] <= 1'b0;
        Delay16_reg[88] <= 1'b0;
        Delay16_reg[89] <= 1'b0;
        Delay16_reg[90] <= 1'b0;
        Delay16_reg[91] <= 1'b0;
        Delay16_reg[92] <= 1'b0;
        Delay16_reg[93] <= 1'b0;
        Delay16_reg[94] <= 1'b0;
        Delay16_reg[95] <= 1'b0;
        Delay16_reg[96] <= 1'b0;
        Delay16_reg[97] <= 1'b0;
        Delay16_reg[98] <= 1'b0;
        Delay16_reg[99] <= 1'b0;
        Delay16_reg[100] <= 1'b0;
        Delay16_reg[101] <= 1'b0;
        Delay16_reg[102] <= 1'b0;
        Delay16_reg[103] <= 1'b0;
        Delay16_reg[104] <= 1'b0;
        Delay16_reg[105] <= 1'b0;
        Delay16_reg[106] <= 1'b0;
        Delay16_reg[107] <= 1'b0;
        Delay16_reg[108] <= 1'b0;
        Delay16_reg[109] <= 1'b0;
        Delay16_reg[110] <= 1'b0;
        Delay16_reg[111] <= 1'b0;
        Delay16_reg[112] <= 1'b0;
        Delay16_reg[113] <= 1'b0;
        Delay16_reg[114] <= 1'b0;
        Delay16_reg[115] <= 1'b0;
        Delay16_reg[116] <= 1'b0;
        Delay16_reg[117] <= 1'b0;
        Delay16_reg[118] <= 1'b0;
        Delay16_reg[119] <= 1'b0;
        Delay16_reg[120] <= 1'b0;
        Delay16_reg[121] <= 1'b0;
        Delay16_reg[122] <= 1'b0;
        Delay16_reg[123] <= 1'b0;
        Delay16_reg[124] <= 1'b0;
        Delay16_reg[125] <= 1'b0;
        Delay16_reg[126] <= 1'b0;
        Delay16_reg[127] <= 1'b0;
        Delay16_reg[128] <= 1'b0;
        Delay16_reg[129] <= 1'b0;
        Delay16_reg[130] <= 1'b0;
        Delay16_reg[131] <= 1'b0;
        Delay16_reg[132] <= 1'b0;
        Delay16_reg[133] <= 1'b0;
        Delay16_reg[134] <= 1'b0;
        Delay16_reg[135] <= 1'b0;
        Delay16_reg[136] <= 1'b0;
        Delay16_reg[137] <= 1'b0;
        Delay16_reg[138] <= 1'b0;
        Delay16_reg[139] <= 1'b0;
        Delay16_reg[140] <= 1'b0;
        Delay16_reg[141] <= 1'b0;
        Delay16_reg[142] <= 1'b0;
        Delay16_reg[143] <= 1'b0;
        Delay16_reg[144] <= 1'b0;
        Delay16_reg[145] <= 1'b0;
        Delay16_reg[146] <= 1'b0;
        Delay16_reg[147] <= 1'b0;
        Delay16_reg[148] <= 1'b0;
        Delay16_reg[149] <= 1'b0;
        Delay16_reg[150] <= 1'b0;
        Delay16_reg[151] <= 1'b0;
        Delay16_reg[152] <= 1'b0;
        Delay16_reg[153] <= 1'b0;
        Delay16_reg[154] <= 1'b0;
        Delay16_reg[155] <= 1'b0;
        Delay16_reg[156] <= 1'b0;
        Delay16_reg[157] <= 1'b0;
        Delay16_reg[158] <= 1'b0;
        Delay16_reg[159] <= 1'b0;
        Delay16_reg[160] <= 1'b0;
        Delay16_reg[161] <= 1'b0;
        Delay16_reg[162] <= 1'b0;
        Delay16_reg[163] <= 1'b0;
        Delay16_reg[164] <= 1'b0;
        Delay16_reg[165] <= 1'b0;
        Delay16_reg[166] <= 1'b0;
        Delay16_reg[167] <= 1'b0;
        Delay16_reg[168] <= 1'b0;
        Delay16_reg[169] <= 1'b0;
        Delay16_reg[170] <= 1'b0;
        Delay16_reg[171] <= 1'b0;
        Delay16_reg[172] <= 1'b0;
        Delay16_reg[173] <= 1'b0;
        Delay16_reg[174] <= 1'b0;
        Delay16_reg[175] <= 1'b0;
        Delay16_reg[176] <= 1'b0;
        Delay16_reg[177] <= 1'b0;
        Delay16_reg[178] <= 1'b0;
        Delay16_reg[179] <= 1'b0;
        Delay16_reg[180] <= 1'b0;
        Delay16_reg[181] <= 1'b0;
        Delay16_reg[182] <= 1'b0;
        Delay16_reg[183] <= 1'b0;
        Delay16_reg[184] <= 1'b0;
        Delay16_reg[185] <= 1'b0;
        Delay16_reg[186] <= 1'b0;
        Delay16_reg[187] <= 1'b0;
        Delay16_reg[188] <= 1'b0;
        Delay16_reg[189] <= 1'b0;
        Delay16_reg[190] <= 1'b0;
        Delay16_reg[191] <= 1'b0;
        Delay16_reg[192] <= 1'b0;
        Delay16_reg[193] <= 1'b0;
        Delay16_reg[194] <= 1'b0;
        Delay16_reg[195] <= 1'b0;
        Delay16_reg[196] <= 1'b0;
        Delay16_reg[197] <= 1'b0;
        Delay16_reg[198] <= 1'b0;
        Delay16_reg[199] <= 1'b0;
        Delay16_reg[200] <= 1'b0;
        Delay16_reg[201] <= 1'b0;
        Delay16_reg[202] <= 1'b0;
        Delay16_reg[203] <= 1'b0;
        Delay16_reg[204] <= 1'b0;
        Delay16_reg[205] <= 1'b0;
        Delay16_reg[206] <= 1'b0;
        Delay16_reg[207] <= 1'b0;
        Delay16_reg[208] <= 1'b0;
        Delay16_reg[209] <= 1'b0;
        Delay16_reg[210] <= 1'b0;
        Delay16_reg[211] <= 1'b0;
        Delay16_reg[212] <= 1'b0;
        Delay16_reg[213] <= 1'b0;
        Delay16_reg[214] <= 1'b0;
        Delay16_reg[215] <= 1'b0;
        Delay16_reg[216] <= 1'b0;
        Delay16_reg[217] <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay16_reg[0] <= Delay16_reg_next[0];
          Delay16_reg[1] <= Delay16_reg_next[1];
          Delay16_reg[2] <= Delay16_reg_next[2];
          Delay16_reg[3] <= Delay16_reg_next[3];
          Delay16_reg[4] <= Delay16_reg_next[4];
          Delay16_reg[5] <= Delay16_reg_next[5];
          Delay16_reg[6] <= Delay16_reg_next[6];
          Delay16_reg[7] <= Delay16_reg_next[7];
          Delay16_reg[8] <= Delay16_reg_next[8];
          Delay16_reg[9] <= Delay16_reg_next[9];
          Delay16_reg[10] <= Delay16_reg_next[10];
          Delay16_reg[11] <= Delay16_reg_next[11];
          Delay16_reg[12] <= Delay16_reg_next[12];
          Delay16_reg[13] <= Delay16_reg_next[13];
          Delay16_reg[14] <= Delay16_reg_next[14];
          Delay16_reg[15] <= Delay16_reg_next[15];
          Delay16_reg[16] <= Delay16_reg_next[16];
          Delay16_reg[17] <= Delay16_reg_next[17];
          Delay16_reg[18] <= Delay16_reg_next[18];
          Delay16_reg[19] <= Delay16_reg_next[19];
          Delay16_reg[20] <= Delay16_reg_next[20];
          Delay16_reg[21] <= Delay16_reg_next[21];
          Delay16_reg[22] <= Delay16_reg_next[22];
          Delay16_reg[23] <= Delay16_reg_next[23];
          Delay16_reg[24] <= Delay16_reg_next[24];
          Delay16_reg[25] <= Delay16_reg_next[25];
          Delay16_reg[26] <= Delay16_reg_next[26];
          Delay16_reg[27] <= Delay16_reg_next[27];
          Delay16_reg[28] <= Delay16_reg_next[28];
          Delay16_reg[29] <= Delay16_reg_next[29];
          Delay16_reg[30] <= Delay16_reg_next[30];
          Delay16_reg[31] <= Delay16_reg_next[31];
          Delay16_reg[32] <= Delay16_reg_next[32];
          Delay16_reg[33] <= Delay16_reg_next[33];
          Delay16_reg[34] <= Delay16_reg_next[34];
          Delay16_reg[35] <= Delay16_reg_next[35];
          Delay16_reg[36] <= Delay16_reg_next[36];
          Delay16_reg[37] <= Delay16_reg_next[37];
          Delay16_reg[38] <= Delay16_reg_next[38];
          Delay16_reg[39] <= Delay16_reg_next[39];
          Delay16_reg[40] <= Delay16_reg_next[40];
          Delay16_reg[41] <= Delay16_reg_next[41];
          Delay16_reg[42] <= Delay16_reg_next[42];
          Delay16_reg[43] <= Delay16_reg_next[43];
          Delay16_reg[44] <= Delay16_reg_next[44];
          Delay16_reg[45] <= Delay16_reg_next[45];
          Delay16_reg[46] <= Delay16_reg_next[46];
          Delay16_reg[47] <= Delay16_reg_next[47];
          Delay16_reg[48] <= Delay16_reg_next[48];
          Delay16_reg[49] <= Delay16_reg_next[49];
          Delay16_reg[50] <= Delay16_reg_next[50];
          Delay16_reg[51] <= Delay16_reg_next[51];
          Delay16_reg[52] <= Delay16_reg_next[52];
          Delay16_reg[53] <= Delay16_reg_next[53];
          Delay16_reg[54] <= Delay16_reg_next[54];
          Delay16_reg[55] <= Delay16_reg_next[55];
          Delay16_reg[56] <= Delay16_reg_next[56];
          Delay16_reg[57] <= Delay16_reg_next[57];
          Delay16_reg[58] <= Delay16_reg_next[58];
          Delay16_reg[59] <= Delay16_reg_next[59];
          Delay16_reg[60] <= Delay16_reg_next[60];
          Delay16_reg[61] <= Delay16_reg_next[61];
          Delay16_reg[62] <= Delay16_reg_next[62];
          Delay16_reg[63] <= Delay16_reg_next[63];
          Delay16_reg[64] <= Delay16_reg_next[64];
          Delay16_reg[65] <= Delay16_reg_next[65];
          Delay16_reg[66] <= Delay16_reg_next[66];
          Delay16_reg[67] <= Delay16_reg_next[67];
          Delay16_reg[68] <= Delay16_reg_next[68];
          Delay16_reg[69] <= Delay16_reg_next[69];
          Delay16_reg[70] <= Delay16_reg_next[70];
          Delay16_reg[71] <= Delay16_reg_next[71];
          Delay16_reg[72] <= Delay16_reg_next[72];
          Delay16_reg[73] <= Delay16_reg_next[73];
          Delay16_reg[74] <= Delay16_reg_next[74];
          Delay16_reg[75] <= Delay16_reg_next[75];
          Delay16_reg[76] <= Delay16_reg_next[76];
          Delay16_reg[77] <= Delay16_reg_next[77];
          Delay16_reg[78] <= Delay16_reg_next[78];
          Delay16_reg[79] <= Delay16_reg_next[79];
          Delay16_reg[80] <= Delay16_reg_next[80];
          Delay16_reg[81] <= Delay16_reg_next[81];
          Delay16_reg[82] <= Delay16_reg_next[82];
          Delay16_reg[83] <= Delay16_reg_next[83];
          Delay16_reg[84] <= Delay16_reg_next[84];
          Delay16_reg[85] <= Delay16_reg_next[85];
          Delay16_reg[86] <= Delay16_reg_next[86];
          Delay16_reg[87] <= Delay16_reg_next[87];
          Delay16_reg[88] <= Delay16_reg_next[88];
          Delay16_reg[89] <= Delay16_reg_next[89];
          Delay16_reg[90] <= Delay16_reg_next[90];
          Delay16_reg[91] <= Delay16_reg_next[91];
          Delay16_reg[92] <= Delay16_reg_next[92];
          Delay16_reg[93] <= Delay16_reg_next[93];
          Delay16_reg[94] <= Delay16_reg_next[94];
          Delay16_reg[95] <= Delay16_reg_next[95];
          Delay16_reg[96] <= Delay16_reg_next[96];
          Delay16_reg[97] <= Delay16_reg_next[97];
          Delay16_reg[98] <= Delay16_reg_next[98];
          Delay16_reg[99] <= Delay16_reg_next[99];
          Delay16_reg[100] <= Delay16_reg_next[100];
          Delay16_reg[101] <= Delay16_reg_next[101];
          Delay16_reg[102] <= Delay16_reg_next[102];
          Delay16_reg[103] <= Delay16_reg_next[103];
          Delay16_reg[104] <= Delay16_reg_next[104];
          Delay16_reg[105] <= Delay16_reg_next[105];
          Delay16_reg[106] <= Delay16_reg_next[106];
          Delay16_reg[107] <= Delay16_reg_next[107];
          Delay16_reg[108] <= Delay16_reg_next[108];
          Delay16_reg[109] <= Delay16_reg_next[109];
          Delay16_reg[110] <= Delay16_reg_next[110];
          Delay16_reg[111] <= Delay16_reg_next[111];
          Delay16_reg[112] <= Delay16_reg_next[112];
          Delay16_reg[113] <= Delay16_reg_next[113];
          Delay16_reg[114] <= Delay16_reg_next[114];
          Delay16_reg[115] <= Delay16_reg_next[115];
          Delay16_reg[116] <= Delay16_reg_next[116];
          Delay16_reg[117] <= Delay16_reg_next[117];
          Delay16_reg[118] <= Delay16_reg_next[118];
          Delay16_reg[119] <= Delay16_reg_next[119];
          Delay16_reg[120] <= Delay16_reg_next[120];
          Delay16_reg[121] <= Delay16_reg_next[121];
          Delay16_reg[122] <= Delay16_reg_next[122];
          Delay16_reg[123] <= Delay16_reg_next[123];
          Delay16_reg[124] <= Delay16_reg_next[124];
          Delay16_reg[125] <= Delay16_reg_next[125];
          Delay16_reg[126] <= Delay16_reg_next[126];
          Delay16_reg[127] <= Delay16_reg_next[127];
          Delay16_reg[128] <= Delay16_reg_next[128];
          Delay16_reg[129] <= Delay16_reg_next[129];
          Delay16_reg[130] <= Delay16_reg_next[130];
          Delay16_reg[131] <= Delay16_reg_next[131];
          Delay16_reg[132] <= Delay16_reg_next[132];
          Delay16_reg[133] <= Delay16_reg_next[133];
          Delay16_reg[134] <= Delay16_reg_next[134];
          Delay16_reg[135] <= Delay16_reg_next[135];
          Delay16_reg[136] <= Delay16_reg_next[136];
          Delay16_reg[137] <= Delay16_reg_next[137];
          Delay16_reg[138] <= Delay16_reg_next[138];
          Delay16_reg[139] <= Delay16_reg_next[139];
          Delay16_reg[140] <= Delay16_reg_next[140];
          Delay16_reg[141] <= Delay16_reg_next[141];
          Delay16_reg[142] <= Delay16_reg_next[142];
          Delay16_reg[143] <= Delay16_reg_next[143];
          Delay16_reg[144] <= Delay16_reg_next[144];
          Delay16_reg[145] <= Delay16_reg_next[145];
          Delay16_reg[146] <= Delay16_reg_next[146];
          Delay16_reg[147] <= Delay16_reg_next[147];
          Delay16_reg[148] <= Delay16_reg_next[148];
          Delay16_reg[149] <= Delay16_reg_next[149];
          Delay16_reg[150] <= Delay16_reg_next[150];
          Delay16_reg[151] <= Delay16_reg_next[151];
          Delay16_reg[152] <= Delay16_reg_next[152];
          Delay16_reg[153] <= Delay16_reg_next[153];
          Delay16_reg[154] <= Delay16_reg_next[154];
          Delay16_reg[155] <= Delay16_reg_next[155];
          Delay16_reg[156] <= Delay16_reg_next[156];
          Delay16_reg[157] <= Delay16_reg_next[157];
          Delay16_reg[158] <= Delay16_reg_next[158];
          Delay16_reg[159] <= Delay16_reg_next[159];
          Delay16_reg[160] <= Delay16_reg_next[160];
          Delay16_reg[161] <= Delay16_reg_next[161];
          Delay16_reg[162] <= Delay16_reg_next[162];
          Delay16_reg[163] <= Delay16_reg_next[163];
          Delay16_reg[164] <= Delay16_reg_next[164];
          Delay16_reg[165] <= Delay16_reg_next[165];
          Delay16_reg[166] <= Delay16_reg_next[166];
          Delay16_reg[167] <= Delay16_reg_next[167];
          Delay16_reg[168] <= Delay16_reg_next[168];
          Delay16_reg[169] <= Delay16_reg_next[169];
          Delay16_reg[170] <= Delay16_reg_next[170];
          Delay16_reg[171] <= Delay16_reg_next[171];
          Delay16_reg[172] <= Delay16_reg_next[172];
          Delay16_reg[173] <= Delay16_reg_next[173];
          Delay16_reg[174] <= Delay16_reg_next[174];
          Delay16_reg[175] <= Delay16_reg_next[175];
          Delay16_reg[176] <= Delay16_reg_next[176];
          Delay16_reg[177] <= Delay16_reg_next[177];
          Delay16_reg[178] <= Delay16_reg_next[178];
          Delay16_reg[179] <= Delay16_reg_next[179];
          Delay16_reg[180] <= Delay16_reg_next[180];
          Delay16_reg[181] <= Delay16_reg_next[181];
          Delay16_reg[182] <= Delay16_reg_next[182];
          Delay16_reg[183] <= Delay16_reg_next[183];
          Delay16_reg[184] <= Delay16_reg_next[184];
          Delay16_reg[185] <= Delay16_reg_next[185];
          Delay16_reg[186] <= Delay16_reg_next[186];
          Delay16_reg[187] <= Delay16_reg_next[187];
          Delay16_reg[188] <= Delay16_reg_next[188];
          Delay16_reg[189] <= Delay16_reg_next[189];
          Delay16_reg[190] <= Delay16_reg_next[190];
          Delay16_reg[191] <= Delay16_reg_next[191];
          Delay16_reg[192] <= Delay16_reg_next[192];
          Delay16_reg[193] <= Delay16_reg_next[193];
          Delay16_reg[194] <= Delay16_reg_next[194];
          Delay16_reg[195] <= Delay16_reg_next[195];
          Delay16_reg[196] <= Delay16_reg_next[196];
          Delay16_reg[197] <= Delay16_reg_next[197];
          Delay16_reg[198] <= Delay16_reg_next[198];
          Delay16_reg[199] <= Delay16_reg_next[199];
          Delay16_reg[200] <= Delay16_reg_next[200];
          Delay16_reg[201] <= Delay16_reg_next[201];
          Delay16_reg[202] <= Delay16_reg_next[202];
          Delay16_reg[203] <= Delay16_reg_next[203];
          Delay16_reg[204] <= Delay16_reg_next[204];
          Delay16_reg[205] <= Delay16_reg_next[205];
          Delay16_reg[206] <= Delay16_reg_next[206];
          Delay16_reg[207] <= Delay16_reg_next[207];
          Delay16_reg[208] <= Delay16_reg_next[208];
          Delay16_reg[209] <= Delay16_reg_next[209];
          Delay16_reg[210] <= Delay16_reg_next[210];
          Delay16_reg[211] <= Delay16_reg_next[211];
          Delay16_reg[212] <= Delay16_reg_next[212];
          Delay16_reg[213] <= Delay16_reg_next[213];
          Delay16_reg[214] <= Delay16_reg_next[214];
          Delay16_reg[215] <= Delay16_reg_next[215];
          Delay16_reg[216] <= Delay16_reg_next[216];
          Delay16_reg[217] <= Delay16_reg_next[217];
        end
      end
    end

  assign Delay16_out1 = Delay16_reg[217];
  assign Delay16_reg_next[0] = ValidIn;
  assign Delay16_reg_next[1] = Delay16_reg[0];
  assign Delay16_reg_next[2] = Delay16_reg[1];
  assign Delay16_reg_next[3] = Delay16_reg[2];
  assign Delay16_reg_next[4] = Delay16_reg[3];
  assign Delay16_reg_next[5] = Delay16_reg[4];
  assign Delay16_reg_next[6] = Delay16_reg[5];
  assign Delay16_reg_next[7] = Delay16_reg[6];
  assign Delay16_reg_next[8] = Delay16_reg[7];
  assign Delay16_reg_next[9] = Delay16_reg[8];
  assign Delay16_reg_next[10] = Delay16_reg[9];
  assign Delay16_reg_next[11] = Delay16_reg[10];
  assign Delay16_reg_next[12] = Delay16_reg[11];
  assign Delay16_reg_next[13] = Delay16_reg[12];
  assign Delay16_reg_next[14] = Delay16_reg[13];
  assign Delay16_reg_next[15] = Delay16_reg[14];
  assign Delay16_reg_next[16] = Delay16_reg[15];
  assign Delay16_reg_next[17] = Delay16_reg[16];
  assign Delay16_reg_next[18] = Delay16_reg[17];
  assign Delay16_reg_next[19] = Delay16_reg[18];
  assign Delay16_reg_next[20] = Delay16_reg[19];
  assign Delay16_reg_next[21] = Delay16_reg[20];
  assign Delay16_reg_next[22] = Delay16_reg[21];
  assign Delay16_reg_next[23] = Delay16_reg[22];
  assign Delay16_reg_next[24] = Delay16_reg[23];
  assign Delay16_reg_next[25] = Delay16_reg[24];
  assign Delay16_reg_next[26] = Delay16_reg[25];
  assign Delay16_reg_next[27] = Delay16_reg[26];
  assign Delay16_reg_next[28] = Delay16_reg[27];
  assign Delay16_reg_next[29] = Delay16_reg[28];
  assign Delay16_reg_next[30] = Delay16_reg[29];
  assign Delay16_reg_next[31] = Delay16_reg[30];
  assign Delay16_reg_next[32] = Delay16_reg[31];
  assign Delay16_reg_next[33] = Delay16_reg[32];
  assign Delay16_reg_next[34] = Delay16_reg[33];
  assign Delay16_reg_next[35] = Delay16_reg[34];
  assign Delay16_reg_next[36] = Delay16_reg[35];
  assign Delay16_reg_next[37] = Delay16_reg[36];
  assign Delay16_reg_next[38] = Delay16_reg[37];
  assign Delay16_reg_next[39] = Delay16_reg[38];
  assign Delay16_reg_next[40] = Delay16_reg[39];
  assign Delay16_reg_next[41] = Delay16_reg[40];
  assign Delay16_reg_next[42] = Delay16_reg[41];
  assign Delay16_reg_next[43] = Delay16_reg[42];
  assign Delay16_reg_next[44] = Delay16_reg[43];
  assign Delay16_reg_next[45] = Delay16_reg[44];
  assign Delay16_reg_next[46] = Delay16_reg[45];
  assign Delay16_reg_next[47] = Delay16_reg[46];
  assign Delay16_reg_next[48] = Delay16_reg[47];
  assign Delay16_reg_next[49] = Delay16_reg[48];
  assign Delay16_reg_next[50] = Delay16_reg[49];
  assign Delay16_reg_next[51] = Delay16_reg[50];
  assign Delay16_reg_next[52] = Delay16_reg[51];
  assign Delay16_reg_next[53] = Delay16_reg[52];
  assign Delay16_reg_next[54] = Delay16_reg[53];
  assign Delay16_reg_next[55] = Delay16_reg[54];
  assign Delay16_reg_next[56] = Delay16_reg[55];
  assign Delay16_reg_next[57] = Delay16_reg[56];
  assign Delay16_reg_next[58] = Delay16_reg[57];
  assign Delay16_reg_next[59] = Delay16_reg[58];
  assign Delay16_reg_next[60] = Delay16_reg[59];
  assign Delay16_reg_next[61] = Delay16_reg[60];
  assign Delay16_reg_next[62] = Delay16_reg[61];
  assign Delay16_reg_next[63] = Delay16_reg[62];
  assign Delay16_reg_next[64] = Delay16_reg[63];
  assign Delay16_reg_next[65] = Delay16_reg[64];
  assign Delay16_reg_next[66] = Delay16_reg[65];
  assign Delay16_reg_next[67] = Delay16_reg[66];
  assign Delay16_reg_next[68] = Delay16_reg[67];
  assign Delay16_reg_next[69] = Delay16_reg[68];
  assign Delay16_reg_next[70] = Delay16_reg[69];
  assign Delay16_reg_next[71] = Delay16_reg[70];
  assign Delay16_reg_next[72] = Delay16_reg[71];
  assign Delay16_reg_next[73] = Delay16_reg[72];
  assign Delay16_reg_next[74] = Delay16_reg[73];
  assign Delay16_reg_next[75] = Delay16_reg[74];
  assign Delay16_reg_next[76] = Delay16_reg[75];
  assign Delay16_reg_next[77] = Delay16_reg[76];
  assign Delay16_reg_next[78] = Delay16_reg[77];
  assign Delay16_reg_next[79] = Delay16_reg[78];
  assign Delay16_reg_next[80] = Delay16_reg[79];
  assign Delay16_reg_next[81] = Delay16_reg[80];
  assign Delay16_reg_next[82] = Delay16_reg[81];
  assign Delay16_reg_next[83] = Delay16_reg[82];
  assign Delay16_reg_next[84] = Delay16_reg[83];
  assign Delay16_reg_next[85] = Delay16_reg[84];
  assign Delay16_reg_next[86] = Delay16_reg[85];
  assign Delay16_reg_next[87] = Delay16_reg[86];
  assign Delay16_reg_next[88] = Delay16_reg[87];
  assign Delay16_reg_next[89] = Delay16_reg[88];
  assign Delay16_reg_next[90] = Delay16_reg[89];
  assign Delay16_reg_next[91] = Delay16_reg[90];
  assign Delay16_reg_next[92] = Delay16_reg[91];
  assign Delay16_reg_next[93] = Delay16_reg[92];
  assign Delay16_reg_next[94] = Delay16_reg[93];
  assign Delay16_reg_next[95] = Delay16_reg[94];
  assign Delay16_reg_next[96] = Delay16_reg[95];
  assign Delay16_reg_next[97] = Delay16_reg[96];
  assign Delay16_reg_next[98] = Delay16_reg[97];
  assign Delay16_reg_next[99] = Delay16_reg[98];
  assign Delay16_reg_next[100] = Delay16_reg[99];
  assign Delay16_reg_next[101] = Delay16_reg[100];
  assign Delay16_reg_next[102] = Delay16_reg[101];
  assign Delay16_reg_next[103] = Delay16_reg[102];
  assign Delay16_reg_next[104] = Delay16_reg[103];
  assign Delay16_reg_next[105] = Delay16_reg[104];
  assign Delay16_reg_next[106] = Delay16_reg[105];
  assign Delay16_reg_next[107] = Delay16_reg[106];
  assign Delay16_reg_next[108] = Delay16_reg[107];
  assign Delay16_reg_next[109] = Delay16_reg[108];
  assign Delay16_reg_next[110] = Delay16_reg[109];
  assign Delay16_reg_next[111] = Delay16_reg[110];
  assign Delay16_reg_next[112] = Delay16_reg[111];
  assign Delay16_reg_next[113] = Delay16_reg[112];
  assign Delay16_reg_next[114] = Delay16_reg[113];
  assign Delay16_reg_next[115] = Delay16_reg[114];
  assign Delay16_reg_next[116] = Delay16_reg[115];
  assign Delay16_reg_next[117] = Delay16_reg[116];
  assign Delay16_reg_next[118] = Delay16_reg[117];
  assign Delay16_reg_next[119] = Delay16_reg[118];
  assign Delay16_reg_next[120] = Delay16_reg[119];
  assign Delay16_reg_next[121] = Delay16_reg[120];
  assign Delay16_reg_next[122] = Delay16_reg[121];
  assign Delay16_reg_next[123] = Delay16_reg[122];
  assign Delay16_reg_next[124] = Delay16_reg[123];
  assign Delay16_reg_next[125] = Delay16_reg[124];
  assign Delay16_reg_next[126] = Delay16_reg[125];
  assign Delay16_reg_next[127] = Delay16_reg[126];
  assign Delay16_reg_next[128] = Delay16_reg[127];
  assign Delay16_reg_next[129] = Delay16_reg[128];
  assign Delay16_reg_next[130] = Delay16_reg[129];
  assign Delay16_reg_next[131] = Delay16_reg[130];
  assign Delay16_reg_next[132] = Delay16_reg[131];
  assign Delay16_reg_next[133] = Delay16_reg[132];
  assign Delay16_reg_next[134] = Delay16_reg[133];
  assign Delay16_reg_next[135] = Delay16_reg[134];
  assign Delay16_reg_next[136] = Delay16_reg[135];
  assign Delay16_reg_next[137] = Delay16_reg[136];
  assign Delay16_reg_next[138] = Delay16_reg[137];
  assign Delay16_reg_next[139] = Delay16_reg[138];
  assign Delay16_reg_next[140] = Delay16_reg[139];
  assign Delay16_reg_next[141] = Delay16_reg[140];
  assign Delay16_reg_next[142] = Delay16_reg[141];
  assign Delay16_reg_next[143] = Delay16_reg[142];
  assign Delay16_reg_next[144] = Delay16_reg[143];
  assign Delay16_reg_next[145] = Delay16_reg[144];
  assign Delay16_reg_next[146] = Delay16_reg[145];
  assign Delay16_reg_next[147] = Delay16_reg[146];
  assign Delay16_reg_next[148] = Delay16_reg[147];
  assign Delay16_reg_next[149] = Delay16_reg[148];
  assign Delay16_reg_next[150] = Delay16_reg[149];
  assign Delay16_reg_next[151] = Delay16_reg[150];
  assign Delay16_reg_next[152] = Delay16_reg[151];
  assign Delay16_reg_next[153] = Delay16_reg[152];
  assign Delay16_reg_next[154] = Delay16_reg[153];
  assign Delay16_reg_next[155] = Delay16_reg[154];
  assign Delay16_reg_next[156] = Delay16_reg[155];
  assign Delay16_reg_next[157] = Delay16_reg[156];
  assign Delay16_reg_next[158] = Delay16_reg[157];
  assign Delay16_reg_next[159] = Delay16_reg[158];
  assign Delay16_reg_next[160] = Delay16_reg[159];
  assign Delay16_reg_next[161] = Delay16_reg[160];
  assign Delay16_reg_next[162] = Delay16_reg[161];
  assign Delay16_reg_next[163] = Delay16_reg[162];
  assign Delay16_reg_next[164] = Delay16_reg[163];
  assign Delay16_reg_next[165] = Delay16_reg[164];
  assign Delay16_reg_next[166] = Delay16_reg[165];
  assign Delay16_reg_next[167] = Delay16_reg[166];
  assign Delay16_reg_next[168] = Delay16_reg[167];
  assign Delay16_reg_next[169] = Delay16_reg[168];
  assign Delay16_reg_next[170] = Delay16_reg[169];
  assign Delay16_reg_next[171] = Delay16_reg[170];
  assign Delay16_reg_next[172] = Delay16_reg[171];
  assign Delay16_reg_next[173] = Delay16_reg[172];
  assign Delay16_reg_next[174] = Delay16_reg[173];
  assign Delay16_reg_next[175] = Delay16_reg[174];
  assign Delay16_reg_next[176] = Delay16_reg[175];
  assign Delay16_reg_next[177] = Delay16_reg[176];
  assign Delay16_reg_next[178] = Delay16_reg[177];
  assign Delay16_reg_next[179] = Delay16_reg[178];
  assign Delay16_reg_next[180] = Delay16_reg[179];
  assign Delay16_reg_next[181] = Delay16_reg[180];
  assign Delay16_reg_next[182] = Delay16_reg[181];
  assign Delay16_reg_next[183] = Delay16_reg[182];
  assign Delay16_reg_next[184] = Delay16_reg[183];
  assign Delay16_reg_next[185] = Delay16_reg[184];
  assign Delay16_reg_next[186] = Delay16_reg[185];
  assign Delay16_reg_next[187] = Delay16_reg[186];
  assign Delay16_reg_next[188] = Delay16_reg[187];
  assign Delay16_reg_next[189] = Delay16_reg[188];
  assign Delay16_reg_next[190] = Delay16_reg[189];
  assign Delay16_reg_next[191] = Delay16_reg[190];
  assign Delay16_reg_next[192] = Delay16_reg[191];
  assign Delay16_reg_next[193] = Delay16_reg[192];
  assign Delay16_reg_next[194] = Delay16_reg[193];
  assign Delay16_reg_next[195] = Delay16_reg[194];
  assign Delay16_reg_next[196] = Delay16_reg[195];
  assign Delay16_reg_next[197] = Delay16_reg[196];
  assign Delay16_reg_next[198] = Delay16_reg[197];
  assign Delay16_reg_next[199] = Delay16_reg[198];
  assign Delay16_reg_next[200] = Delay16_reg[199];
  assign Delay16_reg_next[201] = Delay16_reg[200];
  assign Delay16_reg_next[202] = Delay16_reg[201];
  assign Delay16_reg_next[203] = Delay16_reg[202];
  assign Delay16_reg_next[204] = Delay16_reg[203];
  assign Delay16_reg_next[205] = Delay16_reg[204];
  assign Delay16_reg_next[206] = Delay16_reg[205];
  assign Delay16_reg_next[207] = Delay16_reg[206];
  assign Delay16_reg_next[208] = Delay16_reg[207];
  assign Delay16_reg_next[209] = Delay16_reg[208];
  assign Delay16_reg_next[210] = Delay16_reg[209];
  assign Delay16_reg_next[211] = Delay16_reg[210];
  assign Delay16_reg_next[212] = Delay16_reg[211];
  assign Delay16_reg_next[213] = Delay16_reg[212];
  assign Delay16_reg_next[214] = Delay16_reg[213];
  assign Delay16_reg_next[215] = Delay16_reg[214];
  assign Delay16_reg_next[216] = Delay16_reg[215];
  assign Delay16_reg_next[217] = Delay16_reg[216];



  assign ValidOut = Delay16_out1;

endmodule  // CFAR_Core

