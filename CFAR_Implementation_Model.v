// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\SimulinkCFARHDLWorkflowExampleNew\CFAR_Implementation_Model.v
// Created: 2023-05-30 17:04:47
// 
// Generated by MATLAB 9.12 and HDL Coder 3.20
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 1
// Target subsystem base rate: 1
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        1
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// Detection                     ce_out        1
// Threshold                     ce_out        1
// ValidOut                      ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: CFAR_Implementation_Model
// Source Path: SimulinkCFARHDLWorkflowExampleNew/CFAR Implementation Model
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module CFAR_Implementation_Model
          (clk,
           reset,
           clk_enable,
           Stream_Input,
           CUTidx,
           Valid,
           ce_out,
           Detection,
           Threshold,
           ValidOut);


  input   clk;
  input   reset;
  input   clk_enable;
  input   signed [31:0] Stream_Input;  // sfix34_En12
  input   signed [15:0] CUTidx;  // int16
  input   Valid;
  output  ce_out;
  output  Detection;
  output  signed [11:0] Threshold;  // sfix12_En8
  output  ValidOut;


 (* mark_debug = "true" *) wire enb;
 (* mark_debug = "true" *)reg signed [31:0] Delay9_out1;  // sfix34_En12
  reg signed [15:0] Delay10_reg [0:6];  // sfix16 [7]
  wire signed [15:0] Delay10_reg_next [0:6];  // sfix16 [7]
  wire signed [15:0] Delay10_out1;  // int16
  wire signed [31:0] Alpha_HDL_out1;  // sfix34_En12
  reg  [0:6] Delay11_reg;  // ufix1 [7]
  wire [0:6] Delay11_reg_next;  // ufix1 [7]
  wire Delay11_out1;
 (* mark_debug = "true" *) wire signed [31:0] CFAR_Core_out1;  // sfix34_En12
 (* mark_debug = "true" *) wire CFAR_Core_out2;
  wire CFAR_Core_out3;
  wire Validate_out1;
  wire signed [11:0] Validate_out2;  // sfix12_En8
  wire Validate_out3;

  // CFAR HDL


  assign enb = clk_enable;

  always @(posedge clk or posedge reset)
    begin : Delay9_process
      if (reset == 1'b1) begin
        Delay9_out1 <= 34'sh000000000;
      end
      else begin
        if (enb) begin
          Delay9_out1 <= Stream_Input;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay10_process
      if (reset == 1'b1) begin
        Delay10_reg[0] <= 16'sb0000000000000000;
        Delay10_reg[1] <= 16'sb0000000000000000;
        Delay10_reg[2] <= 16'sb0000000000000000;
        Delay10_reg[3] <= 16'sb0000000000000000;
        Delay10_reg[4] <= 16'sb0000000000000000;
        Delay10_reg[5] <= 16'sb0000000000000000;
        Delay10_reg[6] <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay10_reg[0] <= Delay10_reg_next[0];
          Delay10_reg[1] <= Delay10_reg_next[1];
          Delay10_reg[2] <= Delay10_reg_next[2];
          Delay10_reg[3] <= Delay10_reg_next[3];
          Delay10_reg[4] <= Delay10_reg_next[4];
          Delay10_reg[5] <= Delay10_reg_next[5];
          Delay10_reg[6] <= Delay10_reg_next[6];
        end
      end
    end

  assign Delay10_out1 = Delay10_reg[6];
  assign Delay10_reg_next[0] = CUTidx;
  assign Delay10_reg_next[1] = Delay10_reg[0];
  assign Delay10_reg_next[2] = Delay10_reg[1];
  assign Delay10_reg_next[3] = Delay10_reg[2];
  assign Delay10_reg_next[4] = Delay10_reg[3];
  assign Delay10_reg_next[5] = Delay10_reg[4];
  assign Delay10_reg_next[6] = Delay10_reg[5];



  Alpha_HDL u_Alpha_HDL (.clk(clk),
                         .reset(reset),
                         .enb(clk_enable),
                         .alpha(Alpha_HDL_out1)  // sfix34_En12
                         );

  always @(posedge clk or posedge reset)
    begin : Delay11_process
      if (reset == 1'b1) begin
        Delay11_reg[0] <= 1'b0;
        Delay11_reg[1] <= 1'b0;
        Delay11_reg[2] <= 1'b0;
        Delay11_reg[3] <= 1'b0;
        Delay11_reg[4] <= 1'b0;
        Delay11_reg[5] <= 1'b0;
        Delay11_reg[6] <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay11_reg[0] <= Delay11_reg_next[0];
          Delay11_reg[1] <= Delay11_reg_next[1];
          Delay11_reg[2] <= Delay11_reg_next[2];
          Delay11_reg[3] <= Delay11_reg_next[3];
          Delay11_reg[4] <= Delay11_reg_next[4];
          Delay11_reg[5] <= Delay11_reg_next[5];
          Delay11_reg[6] <= Delay11_reg_next[6];
        end
      end
    end

  assign Delay11_out1 = Delay11_reg[6];
  assign Delay11_reg_next[0] = Valid;
  assign Delay11_reg_next[1] = Delay11_reg[0];
  assign Delay11_reg_next[2] = Delay11_reg[1];
  assign Delay11_reg_next[3] = Delay11_reg[2];
  assign Delay11_reg_next[4] = Delay11_reg[3];
  assign Delay11_reg_next[5] = Delay11_reg[4];
  assign Delay11_reg_next[6] = Delay11_reg[5];



  CFAR_Core u_CFAR_Core (.clk(clk),
                         .reset(reset),
                         .enb(clk_enable),
                         .SQR_LAW(Delay9_out1),  // sfix34_En12
                         .CUTIdx_in(Delay10_out1),  // int16
                         .Alpha(Alpha_HDL_out1),  // sfix34_En12
                         .ValidIn(Delay11_out1),
                         .Threshold(CFAR_Core_out1),  // sfix34_En12
                         .Detection(CFAR_Core_out2),
                         .ValidOut(CFAR_Core_out3)
                         );

  Validate u_Validate (.Threshold(CFAR_Core_out1),  // sfix34_En12
                       .Detection(CFAR_Core_out2),
                       .Valid(CFAR_Core_out3),
                       .vDetection(Validate_out1),
                       .vThreshold(Validate_out2),  // sfix12_En8
                       .ValidOut(Validate_out3)
                       );

  assign Detection = Validate_out1;

  assign Threshold = Validate_out2;

  assign ValidOut = Validate_out3;

  assign ce_out = clk_enable;

endmodule  // CFAR_Implementation_Model

