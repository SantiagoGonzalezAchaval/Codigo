// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Oct  3 20:14:14 2021
// Host        : DESKTOP-L6DG2J0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Santi/Desktop/Curso
//               Verilog/Programas/VolveraEmpezarLEDS/VolveraEmpezarLEDS.gen/sources_1/bd/ila/ip/ila_ila_0_0/ila_ila_0_0_stub.v}
// Design      : ila_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.2" *)
module ila_ila_0_0(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[3:0]" */;
  input clk;
  input [3:0]probe0;
endmodule
