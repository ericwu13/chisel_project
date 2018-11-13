module PPGenerator( // @[:@3.2]
  input        io_in_input_sign, // @[:@6.4]
  input  [7:0] io_in_input_exponent, // @[:@6.4]
  input  [2:0] io_in_input_mantissa, // @[:@6.4]
  output [9:0] io_out_pp_1, // @[:@6.4]
  output [8:0] io_out_exponent // @[:@6.4]
);
  wire [3:0] _T_52; // @[Cat.scala 30:58:@12.4]
  wire [6:0] _GEN_0; // @[PPGenerator.scala 25:94:@14.4]
  wire [6:0] _T_54; // @[PPGenerator.scala 25:94:@14.4]
  wire [9:0] _GEN_1; // @[PPGenerator.scala 25:123:@15.4]
  wire [9:0] _T_55; // @[PPGenerator.scala 25:123:@15.4]
  wire [8:0] pp1_tmp; // @[PPGenerator.scala 22:21:@8.4 PPGenerator.scala 25:11:@17.4]
  assign _T_52 = {1'h1,io_in_input_mantissa}; // @[Cat.scala 30:58:@12.4]
  assign _GEN_0 = {{3'd0}, _T_52}; // @[PPGenerator.scala 25:94:@14.4]
  assign _T_54 = _GEN_0 << 2'h0; // @[PPGenerator.scala 25:94:@14.4]
  assign _GEN_1 = {{3'd0}, _T_54}; // @[PPGenerator.scala 25:123:@15.4]
  assign _T_55 = _GEN_1 << 3; // @[PPGenerator.scala 25:123:@15.4]
  assign pp1_tmp = _T_55[8:0]; // @[PPGenerator.scala 22:21:@8.4 PPGenerator.scala 25:11:@17.4]
  assign io_out_pp_1 = {io_in_input_sign,pp1_tmp}; // @[PPGenerator.scala 28:15:@28.4]
  assign io_out_exponent = {{1'd0}, io_in_input_exponent}; // @[PPGenerator.scala 30:19:@34.4]
endmodule
module Max_exp_determ( // @[:@300.2]
  input  [8:0] io_in_skip, // @[:@303.4]
  input  [8:0] io_in_exp_0, // @[:@303.4]
  input  [8:0] io_in_exp_1, // @[:@303.4]
  input  [8:0] io_in_exp_2, // @[:@303.4]
  input  [8:0] io_in_exp_3, // @[:@303.4]
  input  [8:0] io_in_exp_4, // @[:@303.4]
  input  [8:0] io_in_exp_5, // @[:@303.4]
  input  [8:0] io_in_exp_6, // @[:@303.4]
  input  [8:0] io_in_exp_7, // @[:@303.4]
  input  [8:0] io_in_exp_8, // @[:@303.4]
  output [8:0] io_out_max_exp // @[:@303.4]
);
  wire  _T_60; // @[max_exp.scala 31:37:@313.4]
  wire [8:0] exp_tmp_0; // @[max_exp.scala 31:26:@314.4]
  wire  _T_63; // @[max_exp.scala 31:37:@316.4]
  wire [8:0] exp_tmp_1; // @[max_exp.scala 31:26:@317.4]
  wire  _T_66; // @[max_exp.scala 31:37:@319.4]
  wire [8:0] exp_tmp_2; // @[max_exp.scala 31:26:@320.4]
  wire  _T_69; // @[max_exp.scala 31:37:@322.4]
  wire [8:0] exp_tmp_3; // @[max_exp.scala 31:26:@323.4]
  wire  _T_72; // @[max_exp.scala 31:37:@325.4]
  wire [8:0] exp_tmp_4; // @[max_exp.scala 31:26:@326.4]
  wire  _T_75; // @[max_exp.scala 31:37:@328.4]
  wire [8:0] exp_tmp_5; // @[max_exp.scala 31:26:@329.4]
  wire  _T_78; // @[max_exp.scala 31:37:@331.4]
  wire [8:0] exp_tmp_6; // @[max_exp.scala 31:26:@332.4]
  wire  _T_81; // @[max_exp.scala 31:37:@334.4]
  wire [8:0] exp_tmp_7; // @[max_exp.scala 31:26:@335.4]
  wire  _T_84; // @[max_exp.scala 31:37:@337.4]
  wire [8:0] exp_tmp_8; // @[max_exp.scala 31:26:@338.4]
  wire  _T_87; // @[max_exp.scala 35:30:@340.4]
  wire [8:0] wire1_1; // @[max_exp.scala 35:19:@341.4]
  wire  _T_89; // @[max_exp.scala 36:30:@343.4]
  wire [8:0] wire1_2; // @[max_exp.scala 36:19:@344.4]
  wire  _T_91; // @[max_exp.scala 37:30:@346.4]
  wire [8:0] wire1_3; // @[max_exp.scala 37:19:@347.4]
  wire  _T_93; // @[max_exp.scala 38:30:@349.4]
  wire [8:0] wire1_4; // @[max_exp.scala 38:19:@350.4]
  wire  _T_95; // @[max_exp.scala 39:27:@352.4]
  wire [8:0] wire2_1; // @[max_exp.scala 39:19:@353.4]
  wire  _T_97; // @[max_exp.scala 40:27:@355.4]
  wire [8:0] wire2_2; // @[max_exp.scala 40:19:@356.4]
  wire  _T_99; // @[max_exp.scala 41:27:@358.4]
  wire [8:0] wire3_1; // @[max_exp.scala 41:19:@359.4]
  wire  _T_101; // @[max_exp.scala 42:34:@361.4]
  assign _T_60 = io_in_skip[8]; // @[max_exp.scala 31:37:@313.4]
  assign exp_tmp_0 = _T_60 ? 9'h0 : io_in_exp_0; // @[max_exp.scala 31:26:@314.4]
  assign _T_63 = io_in_skip[7]; // @[max_exp.scala 31:37:@316.4]
  assign exp_tmp_1 = _T_63 ? 9'h0 : io_in_exp_1; // @[max_exp.scala 31:26:@317.4]
  assign _T_66 = io_in_skip[6]; // @[max_exp.scala 31:37:@319.4]
  assign exp_tmp_2 = _T_66 ? 9'h0 : io_in_exp_2; // @[max_exp.scala 31:26:@320.4]
  assign _T_69 = io_in_skip[5]; // @[max_exp.scala 31:37:@322.4]
  assign exp_tmp_3 = _T_69 ? 9'h0 : io_in_exp_3; // @[max_exp.scala 31:26:@323.4]
  assign _T_72 = io_in_skip[4]; // @[max_exp.scala 31:37:@325.4]
  assign exp_tmp_4 = _T_72 ? 9'h0 : io_in_exp_4; // @[max_exp.scala 31:26:@326.4]
  assign _T_75 = io_in_skip[3]; // @[max_exp.scala 31:37:@328.4]
  assign exp_tmp_5 = _T_75 ? 9'h0 : io_in_exp_5; // @[max_exp.scala 31:26:@329.4]
  assign _T_78 = io_in_skip[2]; // @[max_exp.scala 31:37:@331.4]
  assign exp_tmp_6 = _T_78 ? 9'h0 : io_in_exp_6; // @[max_exp.scala 31:26:@332.4]
  assign _T_81 = io_in_skip[1]; // @[max_exp.scala 31:37:@334.4]
  assign exp_tmp_7 = _T_81 ? 9'h0 : io_in_exp_7; // @[max_exp.scala 31:26:@335.4]
  assign _T_84 = io_in_skip[0]; // @[max_exp.scala 31:37:@337.4]
  assign exp_tmp_8 = _T_84 ? 9'h0 : io_in_exp_8; // @[max_exp.scala 31:26:@338.4]
  assign _T_87 = exp_tmp_0 > exp_tmp_1; // @[max_exp.scala 35:30:@340.4]
  assign wire1_1 = _T_87 ? exp_tmp_0 : exp_tmp_1; // @[max_exp.scala 35:19:@341.4]
  assign _T_89 = exp_tmp_2 > exp_tmp_3; // @[max_exp.scala 36:30:@343.4]
  assign wire1_2 = _T_89 ? exp_tmp_2 : exp_tmp_3; // @[max_exp.scala 36:19:@344.4]
  assign _T_91 = exp_tmp_4 > exp_tmp_5; // @[max_exp.scala 37:30:@346.4]
  assign wire1_3 = _T_91 ? exp_tmp_4 : exp_tmp_5; // @[max_exp.scala 37:19:@347.4]
  assign _T_93 = exp_tmp_6 > exp_tmp_7; // @[max_exp.scala 38:30:@349.4]
  assign wire1_4 = _T_93 ? exp_tmp_6 : exp_tmp_7; // @[max_exp.scala 38:19:@350.4]
  assign _T_95 = wire1_1 > wire1_2; // @[max_exp.scala 39:27:@352.4]
  assign wire2_1 = _T_95 ? wire1_1 : wire1_2; // @[max_exp.scala 39:19:@353.4]
  assign _T_97 = wire1_3 > wire1_4; // @[max_exp.scala 40:27:@355.4]
  assign wire2_2 = _T_97 ? wire1_3 : wire1_4; // @[max_exp.scala 40:19:@356.4]
  assign _T_99 = wire2_1 > wire2_2; // @[max_exp.scala 41:27:@358.4]
  assign wire3_1 = _T_99 ? wire2_1 : wire2_2; // @[max_exp.scala 41:19:@359.4]
  assign _T_101 = wire3_1 > exp_tmp_8; // @[max_exp.scala 42:34:@361.4]
  assign io_out_max_exp = _T_101 ? wire3_1 : exp_tmp_8; // @[max_exp.scala 42:20:@363.4]
endmodule
module Align_CG2( // @[:@366.2]
  input  [9:0]  io_in_pp1, // @[:@369.4]
  input  [9:0]  io_in_pp2, // @[:@369.4]
  input  [8:0]  io_in_exp, // @[:@369.4]
  input  [8:0]  io_in_max_exp, // @[:@369.4]
  output [23:0] io_out_align_pp1, // @[:@369.4]
  output [23:0] io_out_align_pp2 // @[:@369.4]
);
  wire [8:0] _T_19; // @[align.scala 24:29:@373.4]
  wire [22:0] _T_21; // @[Cat.scala 30:58:@374.4]
  wire [8:0] _T_22; // @[align.scala 25:29:@376.4]
  wire [22:0] _T_24; // @[Cat.scala 30:58:@377.4]
  wire [9:0] _T_27; // @[align.scala 28:42:@381.4]
  wire [9:0] _T_28; // @[align.scala 28:42:@382.4]
  wire [8:0] _T_29; // @[align.scala 28:42:@383.4]
  wire [23:0] pp1_pad; // @[align.scala 22:23:@371.4 align.scala 24:13:@375.4]
  wire [23:0] pp1_shift; // @[align.scala 28:26:@384.4]
  wire [23:0] pp2_pad; // @[align.scala 23:23:@372.4 align.scala 25:13:@378.4]
  wire [23:0] pp2_shift; // @[align.scala 29:26:@389.4]
  wire  _T_35; // @[align.scala 31:38:@391.4]
  wire [23:0] _T_36; // @[align.scala 31:43:@392.4]
  wire [24:0] _T_38; // @[align.scala 31:54:@393.4]
  wire [23:0] _T_39; // @[align.scala 31:54:@394.4]
  wire  _T_41; // @[align.scala 32:38:@397.4]
  wire [23:0] _T_42; // @[align.scala 32:43:@398.4]
  wire [24:0] _T_44; // @[align.scala 32:53:@399.4]
  wire [23:0] _T_45; // @[align.scala 32:53:@400.4]
  assign _T_19 = io_in_pp1[8:0]; // @[align.scala 24:29:@373.4]
  assign _T_21 = {_T_19,14'h0}; // @[Cat.scala 30:58:@374.4]
  assign _T_22 = io_in_pp2[8:0]; // @[align.scala 25:29:@376.4]
  assign _T_24 = {_T_22,14'h0}; // @[Cat.scala 30:58:@377.4]
  assign _T_27 = io_in_max_exp - io_in_exp; // @[align.scala 28:42:@381.4]
  assign _T_28 = $unsigned(_T_27); // @[align.scala 28:42:@382.4]
  assign _T_29 = _T_28[8:0]; // @[align.scala 28:42:@383.4]
  assign pp1_pad = {{1'd0}, _T_21}; // @[align.scala 22:23:@371.4 align.scala 24:13:@375.4]
  assign pp1_shift = pp1_pad >> _T_29; // @[align.scala 28:26:@384.4]
  assign pp2_pad = {{1'd0}, _T_24}; // @[align.scala 23:23:@372.4 align.scala 25:13:@378.4]
  assign pp2_shift = pp2_pad >> _T_29; // @[align.scala 29:26:@389.4]
  assign _T_35 = io_in_pp1[9]; // @[align.scala 31:38:@391.4]
  assign _T_36 = ~ pp1_shift; // @[align.scala 31:43:@392.4]
  assign _T_38 = _T_36 + 24'h1; // @[align.scala 31:54:@393.4]
  assign _T_39 = _T_38[23:0]; // @[align.scala 31:54:@394.4]
  assign _T_41 = io_in_pp2[9]; // @[align.scala 32:38:@397.4]
  assign _T_42 = ~ pp2_shift; // @[align.scala 32:43:@398.4]
  assign _T_44 = _T_42 + 24'h1; // @[align.scala 32:53:@399.4]
  assign _T_45 = _T_44[23:0]; // @[align.scala 32:53:@400.4]
  assign io_out_align_pp1 = _T_35 ? _T_39 : pp1_shift; // @[align.scala 31:22:@396.4]
  assign io_out_align_pp2 = _T_41 ? _T_45 : pp2_shift; // @[align.scala 32:22:@402.4]
endmodule
module treeadder( // @[:@771.2]
  input  [22:0] io_in_0, // @[:@774.4]
  input  [22:0] io_in_1, // @[:@774.4]
  input  [22:0] io_in_2, // @[:@774.4]
  input  [22:0] io_in_3, // @[:@774.4]
  input  [22:0] io_in_4, // @[:@774.4]
  input  [22:0] io_in_5, // @[:@774.4]
  input  [22:0] io_in_6, // @[:@774.4]
  input  [22:0] io_in_7, // @[:@774.4]
  input  [22:0] io_in_8, // @[:@774.4]
  input  [22:0] io_in_9, // @[:@774.4]
  input  [22:0] io_in_10, // @[:@774.4]
  input  [22:0] io_in_11, // @[:@774.4]
  input  [22:0] io_in_12, // @[:@774.4]
  input  [22:0] io_in_13, // @[:@774.4]
  input  [22:0] io_in_14, // @[:@774.4]
  input  [22:0] io_in_15, // @[:@774.4]
  input  [22:0] io_in_16, // @[:@774.4]
  input  [22:0] io_in_17, // @[:@774.4]
  output [27:0] io_out // @[:@774.4]
);
  wire [23:0] _T_54; // @[treeadder.scala 13:36:@776.4]
  wire [22:0] _T_55; // @[treeadder.scala 13:36:@777.4]
  wire [23:0] _T_56; // @[treeadder.scala 14:13:@778.4]
  wire [22:0] _T_57; // @[treeadder.scala 14:13:@779.4]
  wire [23:0] _T_58; // @[treeadder.scala 15:13:@780.4]
  wire [22:0] _T_59; // @[treeadder.scala 15:13:@781.4]
  wire [23:0] _T_60; // @[treeadder.scala 16:13:@782.4]
  wire [22:0] _T_61; // @[treeadder.scala 16:13:@783.4]
  wire [23:0] _T_62; // @[treeadder.scala 17:13:@784.4]
  wire [22:0] _T_63; // @[treeadder.scala 17:13:@785.4]
  wire [23:0] _T_64; // @[treeadder.scala 18:13:@786.4]
  wire [22:0] _T_65; // @[treeadder.scala 18:13:@787.4]
  wire [23:0] _T_66; // @[treeadder.scala 19:13:@788.4]
  wire [22:0] _T_67; // @[treeadder.scala 19:13:@789.4]
  wire [23:0] _T_68; // @[treeadder.scala 20:13:@790.4]
  wire [22:0] _T_69; // @[treeadder.scala 20:13:@791.4]
  wire [23:0] _T_70; // @[treeadder.scala 21:13:@792.4]
  wire [22:0] _T_71; // @[treeadder.scala 21:13:@793.4]
  wire [23:0] _T_72; // @[treeadder.scala 22:13:@794.4]
  wire [22:0] _T_73; // @[treeadder.scala 22:13:@795.4]
  wire [23:0] _T_74; // @[treeadder.scala 23:14:@796.4]
  wire [22:0] _T_75; // @[treeadder.scala 23:14:@797.4]
  wire [23:0] _T_76; // @[treeadder.scala 24:14:@798.4]
  wire [22:0] _T_77; // @[treeadder.scala 24:14:@799.4]
  wire [23:0] _T_78; // @[treeadder.scala 25:14:@800.4]
  wire [22:0] _T_79; // @[treeadder.scala 25:14:@801.4]
  wire [23:0] _T_80; // @[treeadder.scala 26:14:@802.4]
  wire [22:0] _T_81; // @[treeadder.scala 26:14:@803.4]
  wire [23:0] _T_82; // @[treeadder.scala 27:14:@804.4]
  wire [22:0] _T_83; // @[treeadder.scala 27:14:@805.4]
  wire [23:0] _T_84; // @[treeadder.scala 28:14:@806.4]
  wire [22:0] _T_85; // @[treeadder.scala 28:14:@807.4]
  wire [23:0] _T_86; // @[treeadder.scala 29:14:@808.4]
  wire [22:0] _T_87; // @[treeadder.scala 29:14:@809.4]
  assign _T_54 = io_in_0 + io_in_1; // @[treeadder.scala 13:36:@776.4]
  assign _T_55 = _T_54[22:0]; // @[treeadder.scala 13:36:@777.4]
  assign _T_56 = _T_55 + io_in_2; // @[treeadder.scala 14:13:@778.4]
  assign _T_57 = _T_56[22:0]; // @[treeadder.scala 14:13:@779.4]
  assign _T_58 = _T_57 + io_in_3; // @[treeadder.scala 15:13:@780.4]
  assign _T_59 = _T_58[22:0]; // @[treeadder.scala 15:13:@781.4]
  assign _T_60 = _T_59 + io_in_4; // @[treeadder.scala 16:13:@782.4]
  assign _T_61 = _T_60[22:0]; // @[treeadder.scala 16:13:@783.4]
  assign _T_62 = _T_61 + io_in_5; // @[treeadder.scala 17:13:@784.4]
  assign _T_63 = _T_62[22:0]; // @[treeadder.scala 17:13:@785.4]
  assign _T_64 = _T_63 + io_in_6; // @[treeadder.scala 18:13:@786.4]
  assign _T_65 = _T_64[22:0]; // @[treeadder.scala 18:13:@787.4]
  assign _T_66 = _T_65 + io_in_7; // @[treeadder.scala 19:13:@788.4]
  assign _T_67 = _T_66[22:0]; // @[treeadder.scala 19:13:@789.4]
  assign _T_68 = _T_67 + io_in_8; // @[treeadder.scala 20:13:@790.4]
  assign _T_69 = _T_68[22:0]; // @[treeadder.scala 20:13:@791.4]
  assign _T_70 = _T_69 + io_in_9; // @[treeadder.scala 21:13:@792.4]
  assign _T_71 = _T_70[22:0]; // @[treeadder.scala 21:13:@793.4]
  assign _T_72 = _T_71 + io_in_10; // @[treeadder.scala 22:13:@794.4]
  assign _T_73 = _T_72[22:0]; // @[treeadder.scala 22:13:@795.4]
  assign _T_74 = _T_73 + io_in_11; // @[treeadder.scala 23:14:@796.4]
  assign _T_75 = _T_74[22:0]; // @[treeadder.scala 23:14:@797.4]
  assign _T_76 = _T_75 + io_in_12; // @[treeadder.scala 24:14:@798.4]
  assign _T_77 = _T_76[22:0]; // @[treeadder.scala 24:14:@799.4]
  assign _T_78 = _T_77 + io_in_13; // @[treeadder.scala 25:14:@800.4]
  assign _T_79 = _T_78[22:0]; // @[treeadder.scala 25:14:@801.4]
  assign _T_80 = _T_79 + io_in_14; // @[treeadder.scala 26:14:@802.4]
  assign _T_81 = _T_80[22:0]; // @[treeadder.scala 26:14:@803.4]
  assign _T_82 = _T_81 + io_in_15; // @[treeadder.scala 27:14:@804.4]
  assign _T_83 = _T_82[22:0]; // @[treeadder.scala 27:14:@805.4]
  assign _T_84 = _T_83 + io_in_16; // @[treeadder.scala 28:14:@806.4]
  assign _T_85 = _T_84[22:0]; // @[treeadder.scala 28:14:@807.4]
  assign _T_86 = _T_85 + io_in_17; // @[treeadder.scala 29:14:@808.4]
  assign _T_87 = _T_86[22:0]; // @[treeadder.scala 29:14:@809.4]
  assign io_out = {5'h0,_T_87}; // @[treeadder.scala 13:12:@811.4]
endmodule
module final_norm_noSUB( // @[:@813.2]
  input  [28:0] io_PP_sum, // @[:@816.4]
  output [22:0] io_norm_sum, // @[:@816.4]
  output [7:0]  io_norm_exp, // @[:@816.4]
  output        io_sign // @[:@816.4]
);
  wire  POS_or_NEG; // @[norm.scala 15:32:@819.4]
  wire  _T_22; // @[norm.scala 19:34:@824.4]
  wire [28:0] _T_23; // @[norm.scala 19:56:@825.4]
  wire [29:0] _T_25; // @[norm.scala 19:67:@826.4]
  wire [28:0] _T_26; // @[norm.scala 19:67:@827.4]
  wire [28:0] unsign_sum; // @[norm.scala 19:22:@828.4]
  wire  _T_60; // @[norm.scala 23:42:@831.4]
  wire  _T_64; // @[norm.scala 23:53:@833.4]
  wire  _T_65; // @[norm.scala 23:73:@834.4]
  wire  leading_vector_26; // @[norm.scala 23:61:@836.4]
  wire [1:0] _T_72; // @[norm.scala 24:41:@839.4]
  wire  _T_74; // @[norm.scala 24:50:@840.4]
  wire  _T_76; // @[norm.scala 24:54:@841.4]
  wire  _T_77; // @[norm.scala 24:74:@842.4]
  wire  leading_vector_25; // @[norm.scala 24:62:@844.4]
  wire [2:0] _T_84; // @[norm.scala 25:41:@847.4]
  wire  _T_86; // @[norm.scala 25:50:@848.4]
  wire  _T_88; // @[norm.scala 25:54:@849.4]
  wire  _T_89; // @[norm.scala 25:74:@850.4]
  wire  leading_vector_24; // @[norm.scala 25:62:@852.4]
  wire [3:0] _T_96; // @[norm.scala 26:41:@855.4]
  wire  _T_98; // @[norm.scala 26:50:@856.4]
  wire  _T_100; // @[norm.scala 26:53:@857.4]
  wire  _T_101; // @[norm.scala 26:73:@858.4]
  wire  leading_vector_23; // @[norm.scala 26:61:@860.4]
  wire [4:0] _T_108; // @[norm.scala 27:41:@863.4]
  wire  _T_110; // @[norm.scala 27:50:@864.4]
  wire  _T_112; // @[norm.scala 27:53:@865.4]
  wire  _T_113; // @[norm.scala 27:73:@866.4]
  wire  leading_vector_22; // @[norm.scala 27:61:@868.4]
  wire [5:0] _T_120; // @[norm.scala 28:41:@871.4]
  wire  _T_122; // @[norm.scala 28:50:@872.4]
  wire  _T_124; // @[norm.scala 28:53:@873.4]
  wire  _T_125; // @[norm.scala 28:73:@874.4]
  wire  leading_vector_21; // @[norm.scala 28:61:@876.4]
  wire [6:0] _T_132; // @[norm.scala 29:41:@879.4]
  wire  _T_134; // @[norm.scala 29:50:@880.4]
  wire  _T_136; // @[norm.scala 29:54:@881.4]
  wire  _T_137; // @[norm.scala 29:74:@882.4]
  wire  leading_vector_20; // @[norm.scala 29:62:@884.4]
  wire [7:0] _T_144; // @[norm.scala 30:41:@887.4]
  wire  _T_146; // @[norm.scala 30:50:@888.4]
  wire  _T_148; // @[norm.scala 30:54:@889.4]
  wire  _T_149; // @[norm.scala 30:74:@890.4]
  wire  leading_vector_19; // @[norm.scala 30:62:@892.4]
  wire [8:0] _T_156; // @[norm.scala 31:41:@895.4]
  wire  _T_158; // @[norm.scala 31:50:@896.4]
  wire  _T_160; // @[norm.scala 31:54:@897.4]
  wire  _T_161; // @[norm.scala 31:74:@898.4]
  wire  leading_vector_18; // @[norm.scala 31:62:@900.4]
  wire [9:0] _T_168; // @[norm.scala 32:41:@903.4]
  wire  _T_170; // @[norm.scala 32:50:@904.4]
  wire  _T_172; // @[norm.scala 32:54:@905.4]
  wire  _T_173; // @[norm.scala 32:74:@906.4]
  wire  leading_vector_17; // @[norm.scala 32:62:@908.4]
  wire [10:0] _T_180; // @[norm.scala 33:41:@911.4]
  wire  _T_182; // @[norm.scala 33:50:@912.4]
  wire  _T_184; // @[norm.scala 33:54:@913.4]
  wire  _T_185; // @[norm.scala 33:74:@914.4]
  wire  leading_vector_16; // @[norm.scala 33:62:@916.4]
  wire [11:0] _T_192; // @[norm.scala 35:41:@919.4]
  wire  _T_194; // @[norm.scala 35:50:@920.4]
  wire  _T_196; // @[norm.scala 35:54:@921.4]
  wire  _T_197; // @[norm.scala 35:74:@922.4]
  wire  leading_vector_15; // @[norm.scala 35:62:@924.4]
  wire [12:0] _T_204; // @[norm.scala 36:41:@927.4]
  wire  _T_206; // @[norm.scala 36:50:@928.4]
  wire  _T_208; // @[norm.scala 36:54:@929.4]
  wire  _T_209; // @[norm.scala 36:74:@930.4]
  wire  leading_vector_14; // @[norm.scala 36:62:@932.4]
  wire [13:0] _T_216; // @[norm.scala 37:41:@935.4]
  wire  _T_218; // @[norm.scala 37:50:@936.4]
  wire  _T_220; // @[norm.scala 37:54:@937.4]
  wire  _T_221; // @[norm.scala 37:74:@938.4]
  wire  leading_vector_13; // @[norm.scala 37:62:@940.4]
  wire [14:0] _T_228; // @[norm.scala 38:41:@943.4]
  wire  _T_230; // @[norm.scala 38:50:@944.4]
  wire  _T_232; // @[norm.scala 38:54:@945.4]
  wire  _T_233; // @[norm.scala 38:74:@946.4]
  wire  leading_vector_12; // @[norm.scala 38:62:@948.4]
  wire [15:0] _T_240; // @[norm.scala 39:41:@951.4]
  wire  _T_242; // @[norm.scala 39:50:@952.4]
  wire  _T_244; // @[norm.scala 39:54:@953.4]
  wire  _T_245; // @[norm.scala 39:74:@954.4]
  wire  leading_vector_11; // @[norm.scala 39:62:@956.4]
  wire [16:0] _T_252; // @[norm.scala 41:41:@959.4]
  wire  _T_254; // @[norm.scala 41:50:@960.4]
  wire  _T_256; // @[norm.scala 41:54:@961.4]
  wire  _T_257; // @[norm.scala 41:74:@962.4]
  wire  leading_vector_10; // @[norm.scala 41:62:@964.4]
  wire [17:0] _T_264; // @[norm.scala 42:40:@967.4]
  wire  _T_266; // @[norm.scala 42:49:@968.4]
  wire  _T_268; // @[norm.scala 42:53:@969.4]
  wire  _T_269; // @[norm.scala 42:73:@970.4]
  wire  leading_vector_9; // @[norm.scala 42:61:@972.4]
  wire [18:0] _T_276; // @[norm.scala 43:40:@975.4]
  wire  _T_278; // @[norm.scala 43:48:@976.4]
  wire  _T_280; // @[norm.scala 43:52:@977.4]
  wire  _T_281; // @[norm.scala 43:72:@978.4]
  wire  leading_vector_8; // @[norm.scala 43:60:@980.4]
  wire [19:0] _T_288; // @[norm.scala 44:40:@983.4]
  wire  _T_290; // @[norm.scala 44:48:@984.4]
  wire  _T_292; // @[norm.scala 44:52:@985.4]
  wire  _T_293; // @[norm.scala 44:72:@986.4]
  wire  leading_vector_7; // @[norm.scala 44:60:@988.4]
  wire [20:0] _T_300; // @[norm.scala 45:40:@991.4]
  wire  _T_302; // @[norm.scala 45:48:@992.4]
  wire  _T_304; // @[norm.scala 45:52:@993.4]
  wire  _T_305; // @[norm.scala 45:72:@994.4]
  wire  leading_vector_6; // @[norm.scala 45:60:@996.4]
  wire [21:0] _T_312; // @[norm.scala 47:40:@999.4]
  wire  _T_314; // @[norm.scala 47:48:@1000.4]
  wire  _T_316; // @[norm.scala 47:52:@1001.4]
  wire  _T_317; // @[norm.scala 47:72:@1002.4]
  wire  leading_vector_5; // @[norm.scala 47:60:@1004.4]
  wire [22:0] _T_324; // @[norm.scala 48:40:@1007.4]
  wire  _T_326; // @[norm.scala 48:48:@1008.4]
  wire  _T_328; // @[norm.scala 48:52:@1009.4]
  wire  _T_329; // @[norm.scala 48:72:@1010.4]
  wire  leading_vector_4; // @[norm.scala 48:60:@1012.4]
  wire [23:0] _T_336; // @[norm.scala 49:40:@1015.4]
  wire  _T_338; // @[norm.scala 49:48:@1016.4]
  wire  _T_340; // @[norm.scala 49:52:@1017.4]
  wire  _T_341; // @[norm.scala 49:72:@1018.4]
  wire  leading_vector_3; // @[norm.scala 49:60:@1020.4]
  wire [24:0] _T_348; // @[norm.scala 50:40:@1023.4]
  wire  _T_350; // @[norm.scala 50:48:@1024.4]
  wire  _T_352; // @[norm.scala 50:52:@1025.4]
  wire  _T_353; // @[norm.scala 50:72:@1026.4]
  wire  leading_vector_2; // @[norm.scala 50:60:@1028.4]
  wire [25:0] _T_360; // @[norm.scala 51:40:@1031.4]
  wire  _T_362; // @[norm.scala 51:48:@1032.4]
  wire  _T_364; // @[norm.scala 51:52:@1033.4]
  wire  _T_365; // @[norm.scala 51:72:@1034.4]
  wire  leading_vector_1; // @[norm.scala 51:60:@1036.4]
  wire [26:0] _T_372; // @[norm.scala 52:40:@1039.4]
  wire  _T_374; // @[norm.scala 52:48:@1040.4]
  wire  _T_376; // @[norm.scala 52:52:@1041.4]
  wire  _T_377; // @[norm.scala 52:72:@1042.4]
  wire  leading_vector_0; // @[norm.scala 52:60:@1044.4]
  wire [22:0] _T_386; // @[norm.scala 55:34:@1049.6]
  wire [22:0] _T_390; // @[norm.scala 58:34:@1056.8]
  wire [22:0] _T_394; // @[norm.scala 61:34:@1063.10]
  wire [22:0] _T_398; // @[norm.scala 64:34:@1070.12]
  wire [22:0] _T_402; // @[norm.scala 67:34:@1077.14]
  wire [21:0] _T_407; // @[norm.scala 70:47:@1084.16]
  wire [22:0] _T_408; // @[Cat.scala 30:58:@1085.16]
  wire [20:0] _T_412; // @[norm.scala 73:34:@1092.18]
  wire [19:0] _T_416; // @[norm.scala 76:34:@1099.20]
  wire [18:0] _T_420; // @[norm.scala 79:34:@1106.22]
  wire [17:0] _T_424; // @[norm.scala 82:34:@1113.24]
  wire [16:0] _T_428; // @[norm.scala 85:34:@1120.26]
  wire [15:0] _T_432; // @[norm.scala 88:34:@1127.28]
  wire [14:0] _T_436; // @[norm.scala 91:34:@1134.30]
  wire [13:0] _T_440; // @[norm.scala 94:34:@1141.32]
  wire [12:0] _T_444; // @[norm.scala 97:34:@1148.34]
  wire [11:0] _T_448; // @[norm.scala 100:34:@1155.36]
  wire [10:0] _T_452; // @[norm.scala 103:34:@1162.38]
  wire [9:0] _T_456; // @[norm.scala 106:34:@1169.40]
  wire [8:0] _T_460; // @[norm.scala 109:34:@1176.42]
  wire [7:0] _T_464; // @[norm.scala 112:34:@1183.44]
  wire [6:0] _T_468; // @[norm.scala 115:34:@1190.46]
  wire [5:0] _T_472; // @[norm.scala 118:34:@1197.48]
  wire [4:0] _T_476; // @[norm.scala 121:34:@1204.50]
  wire [3:0] _T_480; // @[norm.scala 124:34:@1211.52]
  wire [2:0] _T_484; // @[norm.scala 127:34:@1218.54]
  wire [1:0] _T_488; // @[norm.scala 130:34:@1225.56]
  wire [22:0] _GEN_0; // @[norm.scala 132:43:@1231.56]
  wire [7:0] _GEN_1; // @[norm.scala 132:43:@1231.56]
  wire [22:0] _GEN_2; // @[norm.scala 129:43:@1224.54]
  wire [7:0] _GEN_3; // @[norm.scala 129:43:@1224.54]
  wire [22:0] _GEN_4; // @[norm.scala 126:43:@1217.52]
  wire [7:0] _GEN_5; // @[norm.scala 126:43:@1217.52]
  wire [22:0] _GEN_6; // @[norm.scala 123:43:@1210.50]
  wire [7:0] _GEN_7; // @[norm.scala 123:43:@1210.50]
  wire [22:0] _GEN_8; // @[norm.scala 120:43:@1203.48]
  wire [7:0] _GEN_9; // @[norm.scala 120:43:@1203.48]
  wire [22:0] _GEN_10; // @[norm.scala 117:43:@1196.46]
  wire [7:0] _GEN_11; // @[norm.scala 117:43:@1196.46]
  wire [22:0] _GEN_12; // @[norm.scala 114:43:@1189.44]
  wire [7:0] _GEN_13; // @[norm.scala 114:43:@1189.44]
  wire [22:0] _GEN_14; // @[norm.scala 111:43:@1182.42]
  wire [7:0] _GEN_15; // @[norm.scala 111:43:@1182.42]
  wire [22:0] _GEN_16; // @[norm.scala 108:43:@1175.40]
  wire [7:0] _GEN_17; // @[norm.scala 108:43:@1175.40]
  wire [22:0] _GEN_18; // @[norm.scala 105:43:@1168.38]
  wire [7:0] _GEN_19; // @[norm.scala 105:43:@1168.38]
  wire [22:0] _GEN_20; // @[norm.scala 102:44:@1161.36]
  wire [7:0] _GEN_21; // @[norm.scala 102:44:@1161.36]
  wire [22:0] _GEN_22; // @[norm.scala 99:44:@1154.34]
  wire [7:0] _GEN_23; // @[norm.scala 99:44:@1154.34]
  wire [22:0] _GEN_24; // @[norm.scala 96:44:@1147.32]
  wire [7:0] _GEN_25; // @[norm.scala 96:44:@1147.32]
  wire [22:0] _GEN_26; // @[norm.scala 93:44:@1140.30]
  wire [7:0] _GEN_27; // @[norm.scala 93:44:@1140.30]
  wire [22:0] _GEN_28; // @[norm.scala 90:44:@1133.28]
  wire [7:0] _GEN_29; // @[norm.scala 90:44:@1133.28]
  wire [22:0] _GEN_30; // @[norm.scala 87:44:@1126.26]
  wire [7:0] _GEN_31; // @[norm.scala 87:44:@1126.26]
  wire [22:0] _GEN_32; // @[norm.scala 84:44:@1119.24]
  wire [7:0] _GEN_33; // @[norm.scala 84:44:@1119.24]
  wire [22:0] _GEN_34; // @[norm.scala 81:44:@1112.22]
  wire [7:0] _GEN_35; // @[norm.scala 81:44:@1112.22]
  wire [22:0] _GEN_36; // @[norm.scala 78:44:@1105.20]
  wire [7:0] _GEN_37; // @[norm.scala 78:44:@1105.20]
  wire [22:0] _GEN_38; // @[norm.scala 75:44:@1098.18]
  wire [7:0] _GEN_39; // @[norm.scala 75:44:@1098.18]
  wire [22:0] _GEN_40; // @[norm.scala 72:44:@1091.16]
  wire [7:0] _GEN_41; // @[norm.scala 72:44:@1091.16]
  wire [22:0] _GEN_42; // @[norm.scala 69:44:@1083.14]
  wire [7:0] _GEN_43; // @[norm.scala 69:44:@1083.14]
  wire [22:0] _GEN_44; // @[norm.scala 66:44:@1076.12]
  wire [7:0] _GEN_45; // @[norm.scala 66:44:@1076.12]
  wire [22:0] _GEN_46; // @[norm.scala 63:44:@1069.10]
  wire [7:0] _GEN_47; // @[norm.scala 63:44:@1069.10]
  wire [22:0] _GEN_48; // @[norm.scala 60:45:@1062.8]
  wire [7:0] _GEN_49; // @[norm.scala 60:45:@1062.8]
  wire [22:0] _GEN_50; // @[norm.scala 57:44:@1055.6]
  wire [7:0] _GEN_51; // @[norm.scala 57:44:@1055.6]
  assign POS_or_NEG = io_PP_sum[27]; // @[norm.scala 15:32:@819.4]
  assign _T_22 = POS_or_NEG == 1'h0; // @[norm.scala 19:34:@824.4]
  assign _T_23 = ~ io_PP_sum; // @[norm.scala 19:56:@825.4]
  assign _T_25 = _T_23 + 29'h1; // @[norm.scala 19:67:@826.4]
  assign _T_26 = _T_25[28:0]; // @[norm.scala 19:67:@827.4]
  assign unsign_sum = _T_22 ? io_PP_sum : _T_26; // @[norm.scala 19:22:@828.4]
  assign _T_60 = unsign_sum[27]; // @[norm.scala 23:42:@831.4]
  assign _T_64 = _T_60 == 1'h0; // @[norm.scala 23:53:@833.4]
  assign _T_65 = unsign_sum[26]; // @[norm.scala 23:73:@834.4]
  assign leading_vector_26 = _T_64 & _T_65; // @[norm.scala 23:61:@836.4]
  assign _T_72 = unsign_sum[27:26]; // @[norm.scala 24:41:@839.4]
  assign _T_74 = _T_72 != 2'h0; // @[norm.scala 24:50:@840.4]
  assign _T_76 = _T_74 == 1'h0; // @[norm.scala 24:54:@841.4]
  assign _T_77 = unsign_sum[25]; // @[norm.scala 24:74:@842.4]
  assign leading_vector_25 = _T_76 & _T_77; // @[norm.scala 24:62:@844.4]
  assign _T_84 = unsign_sum[27:25]; // @[norm.scala 25:41:@847.4]
  assign _T_86 = _T_84 != 3'h0; // @[norm.scala 25:50:@848.4]
  assign _T_88 = _T_86 == 1'h0; // @[norm.scala 25:54:@849.4]
  assign _T_89 = unsign_sum[24]; // @[norm.scala 25:74:@850.4]
  assign leading_vector_24 = _T_88 & _T_89; // @[norm.scala 25:62:@852.4]
  assign _T_96 = unsign_sum[27:24]; // @[norm.scala 26:41:@855.4]
  assign _T_98 = _T_96 != 4'h0; // @[norm.scala 26:50:@856.4]
  assign _T_100 = _T_98 == 1'h0; // @[norm.scala 26:53:@857.4]
  assign _T_101 = unsign_sum[23]; // @[norm.scala 26:73:@858.4]
  assign leading_vector_23 = _T_100 & _T_101; // @[norm.scala 26:61:@860.4]
  assign _T_108 = unsign_sum[27:23]; // @[norm.scala 27:41:@863.4]
  assign _T_110 = _T_108 != 5'h0; // @[norm.scala 27:50:@864.4]
  assign _T_112 = _T_110 == 1'h0; // @[norm.scala 27:53:@865.4]
  assign _T_113 = unsign_sum[22]; // @[norm.scala 27:73:@866.4]
  assign leading_vector_22 = _T_112 & _T_113; // @[norm.scala 27:61:@868.4]
  assign _T_120 = unsign_sum[27:22]; // @[norm.scala 28:41:@871.4]
  assign _T_122 = _T_120 != 6'h0; // @[norm.scala 28:50:@872.4]
  assign _T_124 = _T_122 == 1'h0; // @[norm.scala 28:53:@873.4]
  assign _T_125 = unsign_sum[21]; // @[norm.scala 28:73:@874.4]
  assign leading_vector_21 = _T_124 & _T_125; // @[norm.scala 28:61:@876.4]
  assign _T_132 = unsign_sum[27:21]; // @[norm.scala 29:41:@879.4]
  assign _T_134 = _T_132 != 7'h0; // @[norm.scala 29:50:@880.4]
  assign _T_136 = _T_134 == 1'h0; // @[norm.scala 29:54:@881.4]
  assign _T_137 = unsign_sum[20]; // @[norm.scala 29:74:@882.4]
  assign leading_vector_20 = _T_136 & _T_137; // @[norm.scala 29:62:@884.4]
  assign _T_144 = unsign_sum[27:20]; // @[norm.scala 30:41:@887.4]
  assign _T_146 = _T_144 != 8'h0; // @[norm.scala 30:50:@888.4]
  assign _T_148 = _T_146 == 1'h0; // @[norm.scala 30:54:@889.4]
  assign _T_149 = unsign_sum[19]; // @[norm.scala 30:74:@890.4]
  assign leading_vector_19 = _T_148 & _T_149; // @[norm.scala 30:62:@892.4]
  assign _T_156 = unsign_sum[27:19]; // @[norm.scala 31:41:@895.4]
  assign _T_158 = _T_156 != 9'h0; // @[norm.scala 31:50:@896.4]
  assign _T_160 = _T_158 == 1'h0; // @[norm.scala 31:54:@897.4]
  assign _T_161 = unsign_sum[18]; // @[norm.scala 31:74:@898.4]
  assign leading_vector_18 = _T_160 & _T_161; // @[norm.scala 31:62:@900.4]
  assign _T_168 = unsign_sum[27:18]; // @[norm.scala 32:41:@903.4]
  assign _T_170 = _T_168 != 10'h0; // @[norm.scala 32:50:@904.4]
  assign _T_172 = _T_170 == 1'h0; // @[norm.scala 32:54:@905.4]
  assign _T_173 = unsign_sum[17]; // @[norm.scala 32:74:@906.4]
  assign leading_vector_17 = _T_172 & _T_173; // @[norm.scala 32:62:@908.4]
  assign _T_180 = unsign_sum[27:17]; // @[norm.scala 33:41:@911.4]
  assign _T_182 = _T_180 != 11'h0; // @[norm.scala 33:50:@912.4]
  assign _T_184 = _T_182 == 1'h0; // @[norm.scala 33:54:@913.4]
  assign _T_185 = unsign_sum[16]; // @[norm.scala 33:74:@914.4]
  assign leading_vector_16 = _T_184 & _T_185; // @[norm.scala 33:62:@916.4]
  assign _T_192 = unsign_sum[27:16]; // @[norm.scala 35:41:@919.4]
  assign _T_194 = _T_192 != 12'h0; // @[norm.scala 35:50:@920.4]
  assign _T_196 = _T_194 == 1'h0; // @[norm.scala 35:54:@921.4]
  assign _T_197 = unsign_sum[15]; // @[norm.scala 35:74:@922.4]
  assign leading_vector_15 = _T_196 & _T_197; // @[norm.scala 35:62:@924.4]
  assign _T_204 = unsign_sum[27:15]; // @[norm.scala 36:41:@927.4]
  assign _T_206 = _T_204 != 13'h0; // @[norm.scala 36:50:@928.4]
  assign _T_208 = _T_206 == 1'h0; // @[norm.scala 36:54:@929.4]
  assign _T_209 = unsign_sum[14]; // @[norm.scala 36:74:@930.4]
  assign leading_vector_14 = _T_208 & _T_209; // @[norm.scala 36:62:@932.4]
  assign _T_216 = unsign_sum[27:14]; // @[norm.scala 37:41:@935.4]
  assign _T_218 = _T_216 != 14'h0; // @[norm.scala 37:50:@936.4]
  assign _T_220 = _T_218 == 1'h0; // @[norm.scala 37:54:@937.4]
  assign _T_221 = unsign_sum[13]; // @[norm.scala 37:74:@938.4]
  assign leading_vector_13 = _T_220 & _T_221; // @[norm.scala 37:62:@940.4]
  assign _T_228 = unsign_sum[27:13]; // @[norm.scala 38:41:@943.4]
  assign _T_230 = _T_228 != 15'h0; // @[norm.scala 38:50:@944.4]
  assign _T_232 = _T_230 == 1'h0; // @[norm.scala 38:54:@945.4]
  assign _T_233 = unsign_sum[12]; // @[norm.scala 38:74:@946.4]
  assign leading_vector_12 = _T_232 & _T_233; // @[norm.scala 38:62:@948.4]
  assign _T_240 = unsign_sum[27:12]; // @[norm.scala 39:41:@951.4]
  assign _T_242 = _T_240 != 16'h0; // @[norm.scala 39:50:@952.4]
  assign _T_244 = _T_242 == 1'h0; // @[norm.scala 39:54:@953.4]
  assign _T_245 = unsign_sum[11]; // @[norm.scala 39:74:@954.4]
  assign leading_vector_11 = _T_244 & _T_245; // @[norm.scala 39:62:@956.4]
  assign _T_252 = unsign_sum[27:11]; // @[norm.scala 41:41:@959.4]
  assign _T_254 = _T_252 != 17'h0; // @[norm.scala 41:50:@960.4]
  assign _T_256 = _T_254 == 1'h0; // @[norm.scala 41:54:@961.4]
  assign _T_257 = unsign_sum[10]; // @[norm.scala 41:74:@962.4]
  assign leading_vector_10 = _T_256 & _T_257; // @[norm.scala 41:62:@964.4]
  assign _T_264 = unsign_sum[27:10]; // @[norm.scala 42:40:@967.4]
  assign _T_266 = _T_264 != 18'h0; // @[norm.scala 42:49:@968.4]
  assign _T_268 = _T_266 == 1'h0; // @[norm.scala 42:53:@969.4]
  assign _T_269 = unsign_sum[9]; // @[norm.scala 42:73:@970.4]
  assign leading_vector_9 = _T_268 & _T_269; // @[norm.scala 42:61:@972.4]
  assign _T_276 = unsign_sum[27:9]; // @[norm.scala 43:40:@975.4]
  assign _T_278 = _T_276 != 19'h0; // @[norm.scala 43:48:@976.4]
  assign _T_280 = _T_278 == 1'h0; // @[norm.scala 43:52:@977.4]
  assign _T_281 = unsign_sum[8]; // @[norm.scala 43:72:@978.4]
  assign leading_vector_8 = _T_280 & _T_281; // @[norm.scala 43:60:@980.4]
  assign _T_288 = unsign_sum[27:8]; // @[norm.scala 44:40:@983.4]
  assign _T_290 = _T_288 != 20'h0; // @[norm.scala 44:48:@984.4]
  assign _T_292 = _T_290 == 1'h0; // @[norm.scala 44:52:@985.4]
  assign _T_293 = unsign_sum[7]; // @[norm.scala 44:72:@986.4]
  assign leading_vector_7 = _T_292 & _T_293; // @[norm.scala 44:60:@988.4]
  assign _T_300 = unsign_sum[27:7]; // @[norm.scala 45:40:@991.4]
  assign _T_302 = _T_300 != 21'h0; // @[norm.scala 45:48:@992.4]
  assign _T_304 = _T_302 == 1'h0; // @[norm.scala 45:52:@993.4]
  assign _T_305 = unsign_sum[6]; // @[norm.scala 45:72:@994.4]
  assign leading_vector_6 = _T_304 & _T_305; // @[norm.scala 45:60:@996.4]
  assign _T_312 = unsign_sum[27:6]; // @[norm.scala 47:40:@999.4]
  assign _T_314 = _T_312 != 22'h0; // @[norm.scala 47:48:@1000.4]
  assign _T_316 = _T_314 == 1'h0; // @[norm.scala 47:52:@1001.4]
  assign _T_317 = unsign_sum[5]; // @[norm.scala 47:72:@1002.4]
  assign leading_vector_5 = _T_316 & _T_317; // @[norm.scala 47:60:@1004.4]
  assign _T_324 = unsign_sum[27:5]; // @[norm.scala 48:40:@1007.4]
  assign _T_326 = _T_324 != 23'h0; // @[norm.scala 48:48:@1008.4]
  assign _T_328 = _T_326 == 1'h0; // @[norm.scala 48:52:@1009.4]
  assign _T_329 = unsign_sum[4]; // @[norm.scala 48:72:@1010.4]
  assign leading_vector_4 = _T_328 & _T_329; // @[norm.scala 48:60:@1012.4]
  assign _T_336 = unsign_sum[27:4]; // @[norm.scala 49:40:@1015.4]
  assign _T_338 = _T_336 != 24'h0; // @[norm.scala 49:48:@1016.4]
  assign _T_340 = _T_338 == 1'h0; // @[norm.scala 49:52:@1017.4]
  assign _T_341 = unsign_sum[3]; // @[norm.scala 49:72:@1018.4]
  assign leading_vector_3 = _T_340 & _T_341; // @[norm.scala 49:60:@1020.4]
  assign _T_348 = unsign_sum[27:3]; // @[norm.scala 50:40:@1023.4]
  assign _T_350 = _T_348 != 25'h0; // @[norm.scala 50:48:@1024.4]
  assign _T_352 = _T_350 == 1'h0; // @[norm.scala 50:52:@1025.4]
  assign _T_353 = unsign_sum[2]; // @[norm.scala 50:72:@1026.4]
  assign leading_vector_2 = _T_352 & _T_353; // @[norm.scala 50:60:@1028.4]
  assign _T_360 = unsign_sum[27:2]; // @[norm.scala 51:40:@1031.4]
  assign _T_362 = _T_360 != 26'h0; // @[norm.scala 51:48:@1032.4]
  assign _T_364 = _T_362 == 1'h0; // @[norm.scala 51:52:@1033.4]
  assign _T_365 = unsign_sum[1]; // @[norm.scala 51:72:@1034.4]
  assign leading_vector_1 = _T_364 & _T_365; // @[norm.scala 51:60:@1036.4]
  assign _T_372 = unsign_sum[27:1]; // @[norm.scala 52:40:@1039.4]
  assign _T_374 = _T_372 != 27'h0; // @[norm.scala 52:48:@1040.4]
  assign _T_376 = _T_374 == 1'h0; // @[norm.scala 52:52:@1041.4]
  assign _T_377 = unsign_sum[0]; // @[norm.scala 52:72:@1042.4]
  assign leading_vector_0 = _T_376 & _T_377; // @[norm.scala 52:60:@1044.4]
  assign _T_386 = unsign_sum[26:4]; // @[norm.scala 55:34:@1049.6]
  assign _T_390 = unsign_sum[25:3]; // @[norm.scala 58:34:@1056.8]
  assign _T_394 = unsign_sum[24:2]; // @[norm.scala 61:34:@1063.10]
  assign _T_398 = unsign_sum[23:1]; // @[norm.scala 64:34:@1070.12]
  assign _T_402 = unsign_sum[22:0]; // @[norm.scala 67:34:@1077.14]
  assign _T_407 = unsign_sum[21:0]; // @[norm.scala 70:47:@1084.16]
  assign _T_408 = {1'h0,_T_407}; // @[Cat.scala 30:58:@1085.16]
  assign _T_412 = unsign_sum[20:0]; // @[norm.scala 73:34:@1092.18]
  assign _T_416 = unsign_sum[19:0]; // @[norm.scala 76:34:@1099.20]
  assign _T_420 = unsign_sum[18:0]; // @[norm.scala 79:34:@1106.22]
  assign _T_424 = unsign_sum[17:0]; // @[norm.scala 82:34:@1113.24]
  assign _T_428 = unsign_sum[16:0]; // @[norm.scala 85:34:@1120.26]
  assign _T_432 = unsign_sum[15:0]; // @[norm.scala 88:34:@1127.28]
  assign _T_436 = unsign_sum[14:0]; // @[norm.scala 91:34:@1134.30]
  assign _T_440 = unsign_sum[13:0]; // @[norm.scala 94:34:@1141.32]
  assign _T_444 = unsign_sum[12:0]; // @[norm.scala 97:34:@1148.34]
  assign _T_448 = unsign_sum[11:0]; // @[norm.scala 100:34:@1155.36]
  assign _T_452 = unsign_sum[10:0]; // @[norm.scala 103:34:@1162.38]
  assign _T_456 = unsign_sum[9:0]; // @[norm.scala 106:34:@1169.40]
  assign _T_460 = unsign_sum[8:0]; // @[norm.scala 109:34:@1176.42]
  assign _T_464 = unsign_sum[7:0]; // @[norm.scala 112:34:@1183.44]
  assign _T_468 = unsign_sum[6:0]; // @[norm.scala 115:34:@1190.46]
  assign _T_472 = unsign_sum[5:0]; // @[norm.scala 118:34:@1197.48]
  assign _T_476 = unsign_sum[4:0]; // @[norm.scala 121:34:@1204.50]
  assign _T_480 = unsign_sum[3:0]; // @[norm.scala 124:34:@1211.52]
  assign _T_484 = unsign_sum[2:0]; // @[norm.scala 127:34:@1218.54]
  assign _T_488 = unsign_sum[1:0]; // @[norm.scala 130:34:@1225.56]
  assign _GEN_0 = leading_vector_0 ? {{22'd0}, _T_377} : 23'h0; // @[norm.scala 132:43:@1231.56]
  assign _GEN_1 = leading_vector_0 ? 8'h19 : 8'h0; // @[norm.scala 132:43:@1231.56]
  assign _GEN_2 = leading_vector_1 ? {{21'd0}, _T_488} : _GEN_0; // @[norm.scala 129:43:@1224.54]
  assign _GEN_3 = leading_vector_1 ? 8'h18 : _GEN_1; // @[norm.scala 129:43:@1224.54]
  assign _GEN_4 = leading_vector_2 ? {{20'd0}, _T_484} : _GEN_2; // @[norm.scala 126:43:@1217.52]
  assign _GEN_5 = leading_vector_2 ? 8'h17 : _GEN_3; // @[norm.scala 126:43:@1217.52]
  assign _GEN_6 = leading_vector_3 ? {{19'd0}, _T_480} : _GEN_4; // @[norm.scala 123:43:@1210.50]
  assign _GEN_7 = leading_vector_3 ? 8'h16 : _GEN_5; // @[norm.scala 123:43:@1210.50]
  assign _GEN_8 = leading_vector_4 ? {{18'd0}, _T_476} : _GEN_6; // @[norm.scala 120:43:@1203.48]
  assign _GEN_9 = leading_vector_4 ? 8'h15 : _GEN_7; // @[norm.scala 120:43:@1203.48]
  assign _GEN_10 = leading_vector_5 ? {{17'd0}, _T_472} : _GEN_8; // @[norm.scala 117:43:@1196.46]
  assign _GEN_11 = leading_vector_5 ? 8'h14 : _GEN_9; // @[norm.scala 117:43:@1196.46]
  assign _GEN_12 = leading_vector_6 ? {{16'd0}, _T_468} : _GEN_10; // @[norm.scala 114:43:@1189.44]
  assign _GEN_13 = leading_vector_6 ? 8'h13 : _GEN_11; // @[norm.scala 114:43:@1189.44]
  assign _GEN_14 = leading_vector_7 ? {{15'd0}, _T_464} : _GEN_12; // @[norm.scala 111:43:@1182.42]
  assign _GEN_15 = leading_vector_7 ? 8'h12 : _GEN_13; // @[norm.scala 111:43:@1182.42]
  assign _GEN_16 = leading_vector_8 ? {{14'd0}, _T_460} : _GEN_14; // @[norm.scala 108:43:@1175.40]
  assign _GEN_17 = leading_vector_8 ? 8'h11 : _GEN_15; // @[norm.scala 108:43:@1175.40]
  assign _GEN_18 = leading_vector_9 ? {{13'd0}, _T_456} : _GEN_16; // @[norm.scala 105:43:@1168.38]
  assign _GEN_19 = leading_vector_9 ? 8'h10 : _GEN_17; // @[norm.scala 105:43:@1168.38]
  assign _GEN_20 = leading_vector_10 ? {{12'd0}, _T_452} : _GEN_18; // @[norm.scala 102:44:@1161.36]
  assign _GEN_21 = leading_vector_10 ? 8'hf : _GEN_19; // @[norm.scala 102:44:@1161.36]
  assign _GEN_22 = leading_vector_11 ? {{11'd0}, _T_448} : _GEN_20; // @[norm.scala 99:44:@1154.34]
  assign _GEN_23 = leading_vector_11 ? 8'he : _GEN_21; // @[norm.scala 99:44:@1154.34]
  assign _GEN_24 = leading_vector_12 ? {{10'd0}, _T_444} : _GEN_22; // @[norm.scala 96:44:@1147.32]
  assign _GEN_25 = leading_vector_12 ? 8'hd : _GEN_23; // @[norm.scala 96:44:@1147.32]
  assign _GEN_26 = leading_vector_13 ? {{9'd0}, _T_440} : _GEN_24; // @[norm.scala 93:44:@1140.30]
  assign _GEN_27 = leading_vector_13 ? 8'hc : _GEN_25; // @[norm.scala 93:44:@1140.30]
  assign _GEN_28 = leading_vector_14 ? {{8'd0}, _T_436} : _GEN_26; // @[norm.scala 90:44:@1133.28]
  assign _GEN_29 = leading_vector_14 ? 8'hb : _GEN_27; // @[norm.scala 90:44:@1133.28]
  assign _GEN_30 = leading_vector_15 ? {{7'd0}, _T_432} : _GEN_28; // @[norm.scala 87:44:@1126.26]
  assign _GEN_31 = leading_vector_15 ? 8'ha : _GEN_29; // @[norm.scala 87:44:@1126.26]
  assign _GEN_32 = leading_vector_16 ? {{6'd0}, _T_428} : _GEN_30; // @[norm.scala 84:44:@1119.24]
  assign _GEN_33 = leading_vector_16 ? 8'h9 : _GEN_31; // @[norm.scala 84:44:@1119.24]
  assign _GEN_34 = leading_vector_17 ? {{5'd0}, _T_424} : _GEN_32; // @[norm.scala 81:44:@1112.22]
  assign _GEN_35 = leading_vector_17 ? 8'h8 : _GEN_33; // @[norm.scala 81:44:@1112.22]
  assign _GEN_36 = leading_vector_18 ? {{4'd0}, _T_420} : _GEN_34; // @[norm.scala 78:44:@1105.20]
  assign _GEN_37 = leading_vector_18 ? 8'h7 : _GEN_35; // @[norm.scala 78:44:@1105.20]
  assign _GEN_38 = leading_vector_19 ? {{3'd0}, _T_416} : _GEN_36; // @[norm.scala 75:44:@1098.18]
  assign _GEN_39 = leading_vector_19 ? 8'h6 : _GEN_37; // @[norm.scala 75:44:@1098.18]
  assign _GEN_40 = leading_vector_20 ? {{2'd0}, _T_412} : _GEN_38; // @[norm.scala 72:44:@1091.16]
  assign _GEN_41 = leading_vector_20 ? 8'h5 : _GEN_39; // @[norm.scala 72:44:@1091.16]
  assign _GEN_42 = leading_vector_21 ? _T_408 : _GEN_40; // @[norm.scala 69:44:@1083.14]
  assign _GEN_43 = leading_vector_21 ? 8'h4 : _GEN_41; // @[norm.scala 69:44:@1083.14]
  assign _GEN_44 = leading_vector_22 ? _T_402 : _GEN_42; // @[norm.scala 66:44:@1076.12]
  assign _GEN_45 = leading_vector_22 ? 8'h3 : _GEN_43; // @[norm.scala 66:44:@1076.12]
  assign _GEN_46 = leading_vector_23 ? _T_398 : _GEN_44; // @[norm.scala 63:44:@1069.10]
  assign _GEN_47 = leading_vector_23 ? 8'h2 : _GEN_45; // @[norm.scala 63:44:@1069.10]
  assign _GEN_48 = leading_vector_24 ? _T_394 : _GEN_46; // @[norm.scala 60:45:@1062.8]
  assign _GEN_49 = leading_vector_24 ? 8'h1 : _GEN_47; // @[norm.scala 60:45:@1062.8]
  assign _GEN_50 = leading_vector_25 ? _T_390 : _GEN_48; // @[norm.scala 57:44:@1055.6]
  assign _GEN_51 = leading_vector_25 ? 8'h0 : _GEN_49; // @[norm.scala 57:44:@1055.6]
  assign io_norm_sum = leading_vector_26 ? _T_386 : _GEN_50; // @[norm.scala 55:21:@1050.6 norm.scala 58:21:@1057.8 norm.scala 61:21:@1064.10 norm.scala 64:21:@1071.12 norm.scala 67:21:@1078.14 norm.scala 70:21:@1086.16 norm.scala 73:21:@1093.18 norm.scala 76:21:@1100.20 norm.scala 79:21:@1107.22 norm.scala 82:21:@1114.24 norm.scala 85:21:@1121.26 norm.scala 88:21:@1128.28 norm.scala 91:21:@1135.30 norm.scala 94:21:@1142.32 norm.scala 97:21:@1149.34 norm.scala 100:21:@1156.36 norm.scala 103:21:@1163.38 norm.scala 106:21:@1170.40 norm.scala 109:21:@1177.42 norm.scala 112:21:@1184.44 norm.scala 115:21:@1191.46 norm.scala 118:21:@1198.48 norm.scala 121:21:@1205.50 norm.scala 124:21:@1212.52 norm.scala 127:21:@1219.54 norm.scala 130:21:@1226.56 norm.scala 133:21:@1233.58 norm.scala 136:21:@1237.58]
  assign io_norm_exp = leading_vector_26 ? 8'h0 : _GEN_51; // @[norm.scala 56:21:@1051.6 norm.scala 59:21:@1058.8 norm.scala 62:21:@1065.10 norm.scala 65:21:@1072.12 norm.scala 68:21:@1079.14 norm.scala 71:21:@1087.16 norm.scala 74:21:@1094.18 norm.scala 77:21:@1101.20 norm.scala 80:21:@1108.22 norm.scala 83:21:@1115.24 norm.scala 86:21:@1122.26 norm.scala 89:21:@1129.28 norm.scala 92:21:@1136.30 norm.scala 95:21:@1143.32 norm.scala 98:21:@1150.34 norm.scala 101:21:@1157.36 norm.scala 104:21:@1164.38 norm.scala 107:21:@1171.40 norm.scala 110:21:@1178.42 norm.scala 113:21:@1185.44 norm.scala 116:21:@1192.46 norm.scala 119:21:@1199.48 norm.scala 122:21:@1206.50 norm.scala 125:21:@1213.52 norm.scala 128:21:@1220.54 norm.scala 131:21:@1227.56 norm.scala 134:21:@1234.58 norm.scala 137:21:@1238.58]
  assign io_sign = io_PP_sum[27]; // @[norm.scala 16:13:@822.4]
endmodule
module PipelineMac( // @[:@1241.2]
  input         clock, // @[:@1242.4]
  input         reset, // @[:@1243.4]
  input         io_in_input_x_0_sign, // @[:@1244.4]
  input  [7:0]  io_in_input_x_0_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_x_0_mantissa, // @[:@1244.4]
  input         io_in_input_x_1_sign, // @[:@1244.4]
  input  [7:0]  io_in_input_x_1_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_x_1_mantissa, // @[:@1244.4]
  input         io_in_input_x_2_sign, // @[:@1244.4]
  input  [7:0]  io_in_input_x_2_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_x_2_mantissa, // @[:@1244.4]
  input         io_in_input_x_3_sign, // @[:@1244.4]
  input  [7:0]  io_in_input_x_3_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_x_3_mantissa, // @[:@1244.4]
  input         io_in_input_x_4_sign, // @[:@1244.4]
  input  [7:0]  io_in_input_x_4_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_x_4_mantissa, // @[:@1244.4]
  input         io_in_input_x_5_sign, // @[:@1244.4]
  input  [7:0]  io_in_input_x_5_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_x_5_mantissa, // @[:@1244.4]
  input         io_in_input_x_6_sign, // @[:@1244.4]
  input  [7:0]  io_in_input_x_6_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_x_6_mantissa, // @[:@1244.4]
  input         io_in_input_x_7_sign, // @[:@1244.4]
  input  [7:0]  io_in_input_x_7_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_x_7_mantissa, // @[:@1244.4]
  input         io_in_input_x_8_sign, // @[:@1244.4]
  input  [7:0]  io_in_input_x_8_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_x_8_mantissa, // @[:@1244.4]
  input  [2:0]  io_in_input_w_0_grps_0, // @[:@1244.4]
  input  [2:0]  io_in_input_w_0_grps_1, // @[:@1244.4]
  input  [7:0]  io_in_input_w_0_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_w_1_grps_0, // @[:@1244.4]
  input  [2:0]  io_in_input_w_1_grps_1, // @[:@1244.4]
  input  [7:0]  io_in_input_w_1_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_w_2_grps_0, // @[:@1244.4]
  input  [2:0]  io_in_input_w_2_grps_1, // @[:@1244.4]
  input  [7:0]  io_in_input_w_2_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_w_3_grps_0, // @[:@1244.4]
  input  [2:0]  io_in_input_w_3_grps_1, // @[:@1244.4]
  input  [7:0]  io_in_input_w_3_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_w_4_grps_0, // @[:@1244.4]
  input  [2:0]  io_in_input_w_4_grps_1, // @[:@1244.4]
  input  [7:0]  io_in_input_w_4_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_w_5_grps_0, // @[:@1244.4]
  input  [2:0]  io_in_input_w_5_grps_1, // @[:@1244.4]
  input  [7:0]  io_in_input_w_5_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_w_6_grps_0, // @[:@1244.4]
  input  [2:0]  io_in_input_w_6_grps_1, // @[:@1244.4]
  input  [7:0]  io_in_input_w_6_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_w_7_grps_0, // @[:@1244.4]
  input  [2:0]  io_in_input_w_7_grps_1, // @[:@1244.4]
  input  [7:0]  io_in_input_w_7_exponent, // @[:@1244.4]
  input  [2:0]  io_in_input_w_8_grps_0, // @[:@1244.4]
  input  [2:0]  io_in_input_w_8_grps_1, // @[:@1244.4]
  input  [7:0]  io_in_input_w_8_exponent, // @[:@1244.4]
  input  [8:0]  io_in_skip, // @[:@1244.4]
  output        io_out_sign, // @[:@1244.4]
  output [7:0]  io_out_exponent, // @[:@1244.4]
  output [22:0] io_out_mantissa // @[:@1244.4]
);
  wire  PPGenerator_io_in_input_sign; // @[PipelineMac.scala 35:44:@1306.4]
  wire [7:0] PPGenerator_io_in_input_exponent; // @[PipelineMac.scala 35:44:@1306.4]
  wire [2:0] PPGenerator_io_in_input_mantissa; // @[PipelineMac.scala 35:44:@1306.4]
  wire [9:0] PPGenerator_io_out_pp_1; // @[PipelineMac.scala 35:44:@1306.4]
  wire [8:0] PPGenerator_io_out_exponent; // @[PipelineMac.scala 35:44:@1306.4]
  wire  PPGenerator_1_io_in_input_sign; // @[PipelineMac.scala 35:44:@1309.4]
  wire [7:0] PPGenerator_1_io_in_input_exponent; // @[PipelineMac.scala 35:44:@1309.4]
  wire [2:0] PPGenerator_1_io_in_input_mantissa; // @[PipelineMac.scala 35:44:@1309.4]
  wire [9:0] PPGenerator_1_io_out_pp_1; // @[PipelineMac.scala 35:44:@1309.4]
  wire [8:0] PPGenerator_1_io_out_exponent; // @[PipelineMac.scala 35:44:@1309.4]
  wire  PPGenerator_2_io_in_input_sign; // @[PipelineMac.scala 35:44:@1312.4]
  wire [7:0] PPGenerator_2_io_in_input_exponent; // @[PipelineMac.scala 35:44:@1312.4]
  wire [2:0] PPGenerator_2_io_in_input_mantissa; // @[PipelineMac.scala 35:44:@1312.4]
  wire [9:0] PPGenerator_2_io_out_pp_1; // @[PipelineMac.scala 35:44:@1312.4]
  wire [8:0] PPGenerator_2_io_out_exponent; // @[PipelineMac.scala 35:44:@1312.4]
  wire  PPGenerator_3_io_in_input_sign; // @[PipelineMac.scala 35:44:@1315.4]
  wire [7:0] PPGenerator_3_io_in_input_exponent; // @[PipelineMac.scala 35:44:@1315.4]
  wire [2:0] PPGenerator_3_io_in_input_mantissa; // @[PipelineMac.scala 35:44:@1315.4]
  wire [9:0] PPGenerator_3_io_out_pp_1; // @[PipelineMac.scala 35:44:@1315.4]
  wire [8:0] PPGenerator_3_io_out_exponent; // @[PipelineMac.scala 35:44:@1315.4]
  wire  PPGenerator_4_io_in_input_sign; // @[PipelineMac.scala 35:44:@1318.4]
  wire [7:0] PPGenerator_4_io_in_input_exponent; // @[PipelineMac.scala 35:44:@1318.4]
  wire [2:0] PPGenerator_4_io_in_input_mantissa; // @[PipelineMac.scala 35:44:@1318.4]
  wire [9:0] PPGenerator_4_io_out_pp_1; // @[PipelineMac.scala 35:44:@1318.4]
  wire [8:0] PPGenerator_4_io_out_exponent; // @[PipelineMac.scala 35:44:@1318.4]
  wire  PPGenerator_5_io_in_input_sign; // @[PipelineMac.scala 35:44:@1321.4]
  wire [7:0] PPGenerator_5_io_in_input_exponent; // @[PipelineMac.scala 35:44:@1321.4]
  wire [2:0] PPGenerator_5_io_in_input_mantissa; // @[PipelineMac.scala 35:44:@1321.4]
  wire [9:0] PPGenerator_5_io_out_pp_1; // @[PipelineMac.scala 35:44:@1321.4]
  wire [8:0] PPGenerator_5_io_out_exponent; // @[PipelineMac.scala 35:44:@1321.4]
  wire  PPGenerator_6_io_in_input_sign; // @[PipelineMac.scala 35:44:@1324.4]
  wire [7:0] PPGenerator_6_io_in_input_exponent; // @[PipelineMac.scala 35:44:@1324.4]
  wire [2:0] PPGenerator_6_io_in_input_mantissa; // @[PipelineMac.scala 35:44:@1324.4]
  wire [9:0] PPGenerator_6_io_out_pp_1; // @[PipelineMac.scala 35:44:@1324.4]
  wire [8:0] PPGenerator_6_io_out_exponent; // @[PipelineMac.scala 35:44:@1324.4]
  wire  PPGenerator_7_io_in_input_sign; // @[PipelineMac.scala 35:44:@1327.4]
  wire [7:0] PPGenerator_7_io_in_input_exponent; // @[PipelineMac.scala 35:44:@1327.4]
  wire [2:0] PPGenerator_7_io_in_input_mantissa; // @[PipelineMac.scala 35:44:@1327.4]
  wire [9:0] PPGenerator_7_io_out_pp_1; // @[PipelineMac.scala 35:44:@1327.4]
  wire [8:0] PPGenerator_7_io_out_exponent; // @[PipelineMac.scala 35:44:@1327.4]
  wire  PPGenerator_8_io_in_input_sign; // @[PipelineMac.scala 35:44:@1330.4]
  wire [7:0] PPGenerator_8_io_in_input_exponent; // @[PipelineMac.scala 35:44:@1330.4]
  wire [2:0] PPGenerator_8_io_in_input_mantissa; // @[PipelineMac.scala 35:44:@1330.4]
  wire [9:0] PPGenerator_8_io_out_pp_1; // @[PipelineMac.scala 35:44:@1330.4]
  wire [8:0] PPGenerator_8_io_out_exponent; // @[PipelineMac.scala 35:44:@1330.4]
  wire [8:0] Max_exp_determ_io_in_skip; // @[PipelineMac.scala 46:35:@1497.4]
  wire [8:0] Max_exp_determ_io_in_exp_0; // @[PipelineMac.scala 46:35:@1497.4]
  wire [8:0] Max_exp_determ_io_in_exp_1; // @[PipelineMac.scala 46:35:@1497.4]
  wire [8:0] Max_exp_determ_io_in_exp_2; // @[PipelineMac.scala 46:35:@1497.4]
  wire [8:0] Max_exp_determ_io_in_exp_3; // @[PipelineMac.scala 46:35:@1497.4]
  wire [8:0] Max_exp_determ_io_in_exp_4; // @[PipelineMac.scala 46:35:@1497.4]
  wire [8:0] Max_exp_determ_io_in_exp_5; // @[PipelineMac.scala 46:35:@1497.4]
  wire [8:0] Max_exp_determ_io_in_exp_6; // @[PipelineMac.scala 46:35:@1497.4]
  wire [8:0] Max_exp_determ_io_in_exp_7; // @[PipelineMac.scala 46:35:@1497.4]
  wire [8:0] Max_exp_determ_io_in_exp_8; // @[PipelineMac.scala 46:35:@1497.4]
  wire [8:0] Max_exp_determ_io_out_max_exp; // @[PipelineMac.scala 46:35:@1497.4]
  wire [9:0] Align_CG2_io_in_pp1; // @[PipelineMac.scala 69:46:@1661.4]
  wire [9:0] Align_CG2_io_in_pp2; // @[PipelineMac.scala 69:46:@1661.4]
  wire [8:0] Align_CG2_io_in_exp; // @[PipelineMac.scala 69:46:@1661.4]
  wire [8:0] Align_CG2_io_in_max_exp; // @[PipelineMac.scala 69:46:@1661.4]
  wire [23:0] Align_CG2_io_out_align_pp1; // @[PipelineMac.scala 69:46:@1661.4]
  wire [23:0] Align_CG2_io_out_align_pp2; // @[PipelineMac.scala 69:46:@1661.4]
  wire [9:0] Align_CG2_1_io_in_pp1; // @[PipelineMac.scala 69:46:@1664.4]
  wire [9:0] Align_CG2_1_io_in_pp2; // @[PipelineMac.scala 69:46:@1664.4]
  wire [8:0] Align_CG2_1_io_in_exp; // @[PipelineMac.scala 69:46:@1664.4]
  wire [8:0] Align_CG2_1_io_in_max_exp; // @[PipelineMac.scala 69:46:@1664.4]
  wire [23:0] Align_CG2_1_io_out_align_pp1; // @[PipelineMac.scala 69:46:@1664.4]
  wire [23:0] Align_CG2_1_io_out_align_pp2; // @[PipelineMac.scala 69:46:@1664.4]
  wire [9:0] Align_CG2_2_io_in_pp1; // @[PipelineMac.scala 69:46:@1667.4]
  wire [9:0] Align_CG2_2_io_in_pp2; // @[PipelineMac.scala 69:46:@1667.4]
  wire [8:0] Align_CG2_2_io_in_exp; // @[PipelineMac.scala 69:46:@1667.4]
  wire [8:0] Align_CG2_2_io_in_max_exp; // @[PipelineMac.scala 69:46:@1667.4]
  wire [23:0] Align_CG2_2_io_out_align_pp1; // @[PipelineMac.scala 69:46:@1667.4]
  wire [23:0] Align_CG2_2_io_out_align_pp2; // @[PipelineMac.scala 69:46:@1667.4]
  wire [9:0] Align_CG2_3_io_in_pp1; // @[PipelineMac.scala 69:46:@1670.4]
  wire [9:0] Align_CG2_3_io_in_pp2; // @[PipelineMac.scala 69:46:@1670.4]
  wire [8:0] Align_CG2_3_io_in_exp; // @[PipelineMac.scala 69:46:@1670.4]
  wire [8:0] Align_CG2_3_io_in_max_exp; // @[PipelineMac.scala 69:46:@1670.4]
  wire [23:0] Align_CG2_3_io_out_align_pp1; // @[PipelineMac.scala 69:46:@1670.4]
  wire [23:0] Align_CG2_3_io_out_align_pp2; // @[PipelineMac.scala 69:46:@1670.4]
  wire [9:0] Align_CG2_4_io_in_pp1; // @[PipelineMac.scala 69:46:@1673.4]
  wire [9:0] Align_CG2_4_io_in_pp2; // @[PipelineMac.scala 69:46:@1673.4]
  wire [8:0] Align_CG2_4_io_in_exp; // @[PipelineMac.scala 69:46:@1673.4]
  wire [8:0] Align_CG2_4_io_in_max_exp; // @[PipelineMac.scala 69:46:@1673.4]
  wire [23:0] Align_CG2_4_io_out_align_pp1; // @[PipelineMac.scala 69:46:@1673.4]
  wire [23:0] Align_CG2_4_io_out_align_pp2; // @[PipelineMac.scala 69:46:@1673.4]
  wire [9:0] Align_CG2_5_io_in_pp1; // @[PipelineMac.scala 69:46:@1676.4]
  wire [9:0] Align_CG2_5_io_in_pp2; // @[PipelineMac.scala 69:46:@1676.4]
  wire [8:0] Align_CG2_5_io_in_exp; // @[PipelineMac.scala 69:46:@1676.4]
  wire [8:0] Align_CG2_5_io_in_max_exp; // @[PipelineMac.scala 69:46:@1676.4]
  wire [23:0] Align_CG2_5_io_out_align_pp1; // @[PipelineMac.scala 69:46:@1676.4]
  wire [23:0] Align_CG2_5_io_out_align_pp2; // @[PipelineMac.scala 69:46:@1676.4]
  wire [9:0] Align_CG2_6_io_in_pp1; // @[PipelineMac.scala 69:46:@1679.4]
  wire [9:0] Align_CG2_6_io_in_pp2; // @[PipelineMac.scala 69:46:@1679.4]
  wire [8:0] Align_CG2_6_io_in_exp; // @[PipelineMac.scala 69:46:@1679.4]
  wire [8:0] Align_CG2_6_io_in_max_exp; // @[PipelineMac.scala 69:46:@1679.4]
  wire [23:0] Align_CG2_6_io_out_align_pp1; // @[PipelineMac.scala 69:46:@1679.4]
  wire [23:0] Align_CG2_6_io_out_align_pp2; // @[PipelineMac.scala 69:46:@1679.4]
  wire [9:0] Align_CG2_7_io_in_pp1; // @[PipelineMac.scala 69:46:@1682.4]
  wire [9:0] Align_CG2_7_io_in_pp2; // @[PipelineMac.scala 69:46:@1682.4]
  wire [8:0] Align_CG2_7_io_in_exp; // @[PipelineMac.scala 69:46:@1682.4]
  wire [8:0] Align_CG2_7_io_in_max_exp; // @[PipelineMac.scala 69:46:@1682.4]
  wire [23:0] Align_CG2_7_io_out_align_pp1; // @[PipelineMac.scala 69:46:@1682.4]
  wire [23:0] Align_CG2_7_io_out_align_pp2; // @[PipelineMac.scala 69:46:@1682.4]
  wire [9:0] Align_CG2_8_io_in_pp1; // @[PipelineMac.scala 69:46:@1685.4]
  wire [9:0] Align_CG2_8_io_in_pp2; // @[PipelineMac.scala 69:46:@1685.4]
  wire [8:0] Align_CG2_8_io_in_exp; // @[PipelineMac.scala 69:46:@1685.4]
  wire [8:0] Align_CG2_8_io_in_max_exp; // @[PipelineMac.scala 69:46:@1685.4]
  wire [23:0] Align_CG2_8_io_out_align_pp1; // @[PipelineMac.scala 69:46:@1685.4]
  wire [23:0] Align_CG2_8_io_out_align_pp2; // @[PipelineMac.scala 69:46:@1685.4]
  wire [22:0] treeadder_io_in_0; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_1; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_2; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_3; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_4; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_5; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_6; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_7; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_8; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_9; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_10; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_11; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_12; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_13; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_14; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_15; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_16; // @[PipelineMac.scala 103:35:@1972.4]
  wire [22:0] treeadder_io_in_17; // @[PipelineMac.scala 103:35:@1972.4]
  wire [27:0] treeadder_io_out; // @[PipelineMac.scala 103:35:@1972.4]
  wire [28:0] final_norm_noSUB_io_PP_sum; // @[PipelineMac.scala 131:29:@2064.4]
  wire [22:0] final_norm_noSUB_io_norm_sum; // @[PipelineMac.scala 131:29:@2064.4]
  wire [7:0] final_norm_noSUB_io_norm_exp; // @[PipelineMac.scala 131:29:@2064.4]
  wire  final_norm_noSUB_io_sign; // @[PipelineMac.scala 131:29:@2064.4]
  reg  input_x_reg_0_sign; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_0;
  reg [7:0] input_x_reg_0_exponent; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_1;
  reg [2:0] input_x_reg_0_mantissa; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_2;
  reg  input_x_reg_1_sign; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_3;
  reg [7:0] input_x_reg_1_exponent; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_4;
  reg [2:0] input_x_reg_1_mantissa; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_5;
  reg  input_x_reg_2_sign; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_6;
  reg [7:0] input_x_reg_2_exponent; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_7;
  reg [2:0] input_x_reg_2_mantissa; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_8;
  reg  input_x_reg_3_sign; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_9;
  reg [7:0] input_x_reg_3_exponent; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_10;
  reg [2:0] input_x_reg_3_mantissa; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_11;
  reg  input_x_reg_4_sign; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_12;
  reg [7:0] input_x_reg_4_exponent; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_13;
  reg [2:0] input_x_reg_4_mantissa; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_14;
  reg  input_x_reg_5_sign; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_15;
  reg [7:0] input_x_reg_5_exponent; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_16;
  reg [2:0] input_x_reg_5_mantissa; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_17;
  reg  input_x_reg_6_sign; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_18;
  reg [7:0] input_x_reg_6_exponent; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_19;
  reg [2:0] input_x_reg_6_mantissa; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_20;
  reg  input_x_reg_7_sign; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_21;
  reg [7:0] input_x_reg_7_exponent; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_22;
  reg [2:0] input_x_reg_7_mantissa; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_23;
  reg  input_x_reg_8_sign; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_24;
  reg [7:0] input_x_reg_8_exponent; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_25;
  reg [2:0] input_x_reg_8_mantissa; // @[PipelineMac.scala 24:30:@1246.4]
  reg [31:0] _RAND_26;
  reg [8:0] skip_1_reg; // @[PipelineMac.scala 26:29:@1248.4]
  reg [31:0] _RAND_27;
  wire  _T_464; // @[PipelineMac.scala 28:49:@1249.4]
  wire  _T_466; // @[PipelineMac.scala 28:53:@1250.4]
  wire  _T_468; // @[PipelineMac.scala 28:49:@1255.4]
  wire  _T_470; // @[PipelineMac.scala 28:53:@1256.4]
  wire  _T_472; // @[PipelineMac.scala 28:49:@1261.4]
  wire  _T_474; // @[PipelineMac.scala 28:53:@1262.4]
  wire  _T_476; // @[PipelineMac.scala 28:49:@1267.4]
  wire  _T_478; // @[PipelineMac.scala 28:53:@1268.4]
  wire  _T_480; // @[PipelineMac.scala 28:49:@1273.4]
  wire  _T_482; // @[PipelineMac.scala 28:53:@1274.4]
  wire  _T_484; // @[PipelineMac.scala 28:49:@1279.4]
  wire  _T_486; // @[PipelineMac.scala 28:53:@1280.4]
  wire  _T_488; // @[PipelineMac.scala 28:49:@1285.4]
  wire  _T_490; // @[PipelineMac.scala 28:53:@1286.4]
  wire  _T_492; // @[PipelineMac.scala 28:49:@1291.4]
  wire  _T_494; // @[PipelineMac.scala 28:53:@1292.4]
  wire  _T_496; // @[PipelineMac.scala 28:49:@1297.4]
  wire  _T_498; // @[PipelineMac.scala 28:53:@1298.4]
  reg [9:0] pp_reg_0_0; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_28;
  reg [9:0] pp_reg_0_1; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_29;
  reg [9:0] pp_reg_1_0; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_30;
  reg [9:0] pp_reg_1_1; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_31;
  reg [9:0] pp_reg_2_0; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_32;
  reg [9:0] pp_reg_2_1; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_33;
  reg [9:0] pp_reg_3_0; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_34;
  reg [9:0] pp_reg_3_1; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_35;
  reg [9:0] pp_reg_4_0; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_36;
  reg [9:0] pp_reg_4_1; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_37;
  reg [9:0] pp_reg_5_0; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_38;
  reg [9:0] pp_reg_5_1; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_39;
  reg [9:0] pp_reg_6_0; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_40;
  reg [9:0] pp_reg_6_1; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_41;
  reg [9:0] pp_reg_7_0; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_42;
  reg [9:0] pp_reg_7_1; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_43;
  reg [9:0] pp_reg_8_0; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_44;
  reg [9:0] pp_reg_8_1; // @[PipelineMac.scala 54:25:@1511.4]
  reg [31:0] _RAND_45;
  reg [8:0] exp_reg_0; // @[PipelineMac.scala 55:27:@1512.4]
  reg [31:0] _RAND_46;
  reg [8:0] exp_reg_1; // @[PipelineMac.scala 55:27:@1512.4]
  reg [31:0] _RAND_47;
  reg [8:0] exp_reg_2; // @[PipelineMac.scala 55:27:@1512.4]
  reg [31:0] _RAND_48;
  reg [8:0] exp_reg_3; // @[PipelineMac.scala 55:27:@1512.4]
  reg [31:0] _RAND_49;
  reg [8:0] exp_reg_4; // @[PipelineMac.scala 55:27:@1512.4]
  reg [31:0] _RAND_50;
  reg [8:0] exp_reg_5; // @[PipelineMac.scala 55:27:@1512.4]
  reg [31:0] _RAND_51;
  reg [8:0] exp_reg_6; // @[PipelineMac.scala 55:27:@1512.4]
  reg [31:0] _RAND_52;
  reg [8:0] exp_reg_7; // @[PipelineMac.scala 55:27:@1512.4]
  reg [31:0] _RAND_53;
  reg [8:0] exp_reg_8; // @[PipelineMac.scala 55:27:@1512.4]
  reg [31:0] _RAND_54;
  reg [8:0] max_exp_reg__0; // @[PipelineMac.scala 56:31:@1513.4]
  reg [31:0] _RAND_55;
  reg [8:0] max_exp_reg__1; // @[PipelineMac.scala 56:31:@1513.4]
  reg [31:0] _RAND_56;
  reg [8:0] max_exp_reg__2; // @[PipelineMac.scala 56:31:@1513.4]
  reg [31:0] _RAND_57;
  reg [8:0] max_exp_reg__3; // @[PipelineMac.scala 56:31:@1513.4]
  reg [31:0] _RAND_58;
  reg [8:0] max_exp_reg__4; // @[PipelineMac.scala 56:31:@1513.4]
  reg [31:0] _RAND_59;
  reg [8:0] max_exp_reg__5; // @[PipelineMac.scala 56:31:@1513.4]
  reg [31:0] _RAND_60;
  reg [8:0] max_exp_reg__6; // @[PipelineMac.scala 56:31:@1513.4]
  reg [31:0] _RAND_61;
  reg [8:0] max_exp_reg__7; // @[PipelineMac.scala 56:31:@1513.4]
  reg [31:0] _RAND_62;
  reg [8:0] max_exp_reg__8; // @[PipelineMac.scala 56:31:@1513.4]
  reg [31:0] _RAND_63;
  reg [8:0] skip_2_reg; // @[PipelineMac.scala 57:29:@1514.4]
  reg [31:0] _RAND_64;
  wire  _T_1510; // @[PipelineMac.scala 59:47:@1515.4]
  wire  _T_1512; // @[PipelineMac.scala 59:53:@1516.4]
  wire [9:0] gen_pp_io_0_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1336.4]
  wire [8:0] gen_pp_io_0_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1334.4]
  wire [8:0] max_exp; // @[PipelineMac.scala 45:27:@1496.4 PipelineMac.scala 51:17:@1510.4]
  wire  _T_1526; // @[PipelineMac.scala 59:47:@1531.4]
  wire  _T_1528; // @[PipelineMac.scala 59:53:@1532.4]
  wire [9:0] gen_pp_io_1_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1345.4]
  wire [8:0] gen_pp_io_1_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1343.4]
  wire  _T_1542; // @[PipelineMac.scala 59:47:@1547.4]
  wire  _T_1544; // @[PipelineMac.scala 59:53:@1548.4]
  wire [9:0] gen_pp_io_2_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1354.4]
  wire [8:0] gen_pp_io_2_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1352.4]
  wire  _T_1558; // @[PipelineMac.scala 59:47:@1563.4]
  wire  _T_1560; // @[PipelineMac.scala 59:53:@1564.4]
  wire [9:0] gen_pp_io_3_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1363.4]
  wire [8:0] gen_pp_io_3_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1361.4]
  wire  _T_1574; // @[PipelineMac.scala 59:47:@1579.4]
  wire  _T_1576; // @[PipelineMac.scala 59:53:@1580.4]
  wire [9:0] gen_pp_io_4_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1372.4]
  wire [8:0] gen_pp_io_4_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1370.4]
  wire  _T_1590; // @[PipelineMac.scala 59:47:@1595.4]
  wire  _T_1592; // @[PipelineMac.scala 59:53:@1596.4]
  wire [9:0] gen_pp_io_5_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1381.4]
  wire [8:0] gen_pp_io_5_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1379.4]
  wire  _T_1606; // @[PipelineMac.scala 59:47:@1611.4]
  wire  _T_1608; // @[PipelineMac.scala 59:53:@1612.4]
  wire [9:0] gen_pp_io_6_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1390.4]
  wire [8:0] gen_pp_io_6_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1388.4]
  wire  _T_1622; // @[PipelineMac.scala 59:47:@1627.4]
  wire  _T_1624; // @[PipelineMac.scala 59:53:@1628.4]
  wire [9:0] gen_pp_io_7_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1399.4]
  wire [8:0] gen_pp_io_7_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1397.4]
  wire  _T_1638; // @[PipelineMac.scala 59:47:@1643.4]
  wire  _T_1640; // @[PipelineMac.scala 59:53:@1644.4]
  wire [9:0] gen_pp_io_8_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1408.4]
  wire [8:0] gen_pp_io_8_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1406.4]
  reg [8:0] skip_3_reg; // @[PipelineMac.scala 81:29:@1798.4]
  reg [31:0] _RAND_65;
  reg [8:0] max_exp_reg_2; // @[PipelineMac.scala 82:32:@1799.4]
  reg [31:0] _RAND_66;
  wire  _T_2023; // @[PipelineMac.scala 85:54:@1803.4]
  wire [23:0] align_pp_io_0_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1690.4]
  wire [23:0] align_pp_io_0_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1689.4]
  wire  _T_2031; // @[PipelineMac.scala 85:54:@1813.4]
  wire [23:0] align_pp_io_1_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1696.4]
  wire [23:0] align_pp_io_1_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1695.4]
  wire  _T_2039; // @[PipelineMac.scala 85:54:@1823.4]
  wire [23:0] align_pp_io_2_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1702.4]
  wire [23:0] align_pp_io_2_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1701.4]
  wire  _T_2047; // @[PipelineMac.scala 85:54:@1833.4]
  wire [23:0] align_pp_io_3_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1708.4]
  wire [23:0] align_pp_io_3_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1707.4]
  wire  _T_2055; // @[PipelineMac.scala 85:54:@1843.4]
  wire [23:0] align_pp_io_4_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1714.4]
  wire [23:0] align_pp_io_4_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1713.4]
  wire  _T_2063; // @[PipelineMac.scala 85:54:@1853.4]
  wire [23:0] align_pp_io_5_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1720.4]
  wire [23:0] align_pp_io_5_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1719.4]
  wire  _T_2071; // @[PipelineMac.scala 85:54:@1863.4]
  wire [23:0] align_pp_io_6_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1726.4]
  wire [23:0] align_pp_io_6_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1725.4]
  wire  _T_2079; // @[PipelineMac.scala 85:54:@1873.4]
  wire [23:0] align_pp_io_7_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1732.4]
  wire [23:0] align_pp_io_7_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1731.4]
  wire  _T_2087; // @[PipelineMac.scala 85:54:@1883.4]
  wire [23:0] align_pp_io_8_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1738.4]
  wire [23:0] align_pp_io_8_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1737.4]
  reg [23:0] align_pp_reg_0_0; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_67;
  reg [23:0] align_pp_reg_0_1; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_68;
  reg [23:0] align_pp_reg_1_0; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_69;
  reg [23:0] align_pp_reg_1_1; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_70;
  reg [23:0] align_pp_reg_2_0; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_71;
  reg [23:0] align_pp_reg_2_1; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_72;
  reg [23:0] align_pp_reg_3_0; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_73;
  reg [23:0] align_pp_reg_3_1; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_74;
  reg [23:0] align_pp_reg_4_0; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_75;
  reg [23:0] align_pp_reg_4_1; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_76;
  reg [23:0] align_pp_reg_5_0; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_77;
  reg [23:0] align_pp_reg_5_1; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_78;
  reg [23:0] align_pp_reg_6_0; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_79;
  reg [23:0] align_pp_reg_6_1; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_80;
  reg [23:0] align_pp_reg_7_0; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_81;
  reg [23:0] align_pp_reg_7_1; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_82;
  reg [23:0] align_pp_reg_8_0; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_83;
  reg [23:0] align_pp_reg_8_1; // @[PipelineMac.scala 91:31:@1894.4]
  reg [31:0] _RAND_84;
  wire  _T_2264; // @[PipelineMac.scala 94:58:@1897.4]
  wire  _T_2272; // @[PipelineMac.scala 94:58:@1905.4]
  wire  _T_2280; // @[PipelineMac.scala 94:58:@1913.4]
  wire  _T_2288; // @[PipelineMac.scala 94:58:@1921.4]
  wire  _T_2296; // @[PipelineMac.scala 94:58:@1929.4]
  wire  _T_2304; // @[PipelineMac.scala 94:58:@1937.4]
  wire  _T_2312; // @[PipelineMac.scala 94:58:@1945.4]
  wire  _T_2320; // @[PipelineMac.scala 94:58:@1953.4]
  wire  _T_2328; // @[PipelineMac.scala 94:58:@1961.4]
  wire  _T_2501; // @[PipelineMac.scala 106:54:@1976.4]
  wire [23:0] align_pp_tree_0_0; // @[PipelineMac.scala 106:43:@1977.4]
  wire [23:0] align_pp_tree_0_1; // @[PipelineMac.scala 107:43:@1980.4]
  wire  _T_2507; // @[PipelineMac.scala 106:54:@1982.4]
  wire [23:0] align_pp_tree_1_0; // @[PipelineMac.scala 106:43:@1983.4]
  wire [23:0] align_pp_tree_1_1; // @[PipelineMac.scala 107:43:@1986.4]
  wire  _T_2513; // @[PipelineMac.scala 106:54:@1988.4]
  wire [23:0] align_pp_tree_2_0; // @[PipelineMac.scala 106:43:@1989.4]
  wire [23:0] align_pp_tree_2_1; // @[PipelineMac.scala 107:43:@1992.4]
  wire  _T_2519; // @[PipelineMac.scala 106:54:@1994.4]
  wire [23:0] align_pp_tree_3_0; // @[PipelineMac.scala 106:43:@1995.4]
  wire [23:0] align_pp_tree_3_1; // @[PipelineMac.scala 107:43:@1998.4]
  wire  _T_2525; // @[PipelineMac.scala 106:54:@2000.4]
  wire [23:0] align_pp_tree_4_0; // @[PipelineMac.scala 106:43:@2001.4]
  wire [23:0] align_pp_tree_4_1; // @[PipelineMac.scala 107:43:@2004.4]
  wire  _T_2531; // @[PipelineMac.scala 106:54:@2006.4]
  wire [23:0] align_pp_tree_5_0; // @[PipelineMac.scala 106:43:@2007.4]
  wire [23:0] align_pp_tree_5_1; // @[PipelineMac.scala 107:43:@2010.4]
  wire  _T_2537; // @[PipelineMac.scala 106:54:@2012.4]
  wire [23:0] align_pp_tree_6_0; // @[PipelineMac.scala 106:43:@2013.4]
  wire [23:0] align_pp_tree_6_1; // @[PipelineMac.scala 107:43:@2016.4]
  wire  _T_2543; // @[PipelineMac.scala 106:54:@2018.4]
  wire [23:0] align_pp_tree_7_0; // @[PipelineMac.scala 106:43:@2019.4]
  wire [23:0] align_pp_tree_7_1; // @[PipelineMac.scala 107:43:@2022.4]
  wire  _T_2549; // @[PipelineMac.scala 106:54:@2024.4]
  wire [23:0] align_pp_tree_8_0; // @[PipelineMac.scala 106:43:@2025.4]
  wire [23:0] align_pp_tree_8_1; // @[PipelineMac.scala 107:43:@2028.4]
  wire [8:0] _T_2556; // @[PipelineMac.scala 117:30:@2050.4]
  wire  skip_4; // @[PipelineMac.scala 117:30:@2051.4]
  reg  skip_4_reg; // @[PipelineMac.scala 120:29:@2053.4]
  reg [31:0] _RAND_85;
  reg [27:0] out_reg; // @[PipelineMac.scala 121:26:@2054.4]
  reg [31:0] _RAND_86;
  reg [8:0] max_exp_reg_3; // @[PipelineMac.scala 122:32:@2055.4]
  reg [31:0] _RAND_87;
  wire  _T_2563; // @[PipelineMac.scala 123:31:@2056.4]
  wire [27:0] out; // @[PipelineMac.scala 104:23:@1975.4 PipelineMac.scala 110:13:@2030.4]
  reg [22:0] norm_sum_reg; // @[PipelineMac.scala 142:31:@2076.4]
  reg [31:0] _RAND_88;
  reg [7:0] exp_diff_reg; // @[PipelineMac.scala 143:31:@2077.4]
  reg [31:0] _RAND_89;
  reg [8:0] max_exp_reg_4; // @[PipelineMac.scala 144:32:@2078.4]
  reg [31:0] _RAND_90;
  reg  sign_reg; // @[PipelineMac.scala 145:27:@2079.4]
  reg [31:0] _RAND_91;
  reg  skip_5_reg; // @[PipelineMac.scala 146:29:@2080.4]
  reg [31:0] _RAND_92;
  wire  _T_2580; // @[PipelineMac.scala 147:40:@2081.4]
  wire [22:0] norm_sum; // @[PipelineMac.scala 128:28:@2061.4 PipelineMac.scala 134:18:@2069.4]
  wire [7:0] exp_diff; // @[PipelineMac.scala 129:28:@2062.4 PipelineMac.scala 135:18:@2070.4]
  wire  sign; // @[PipelineMac.scala 130:24:@2063.4 PipelineMac.scala 136:14:@2071.4]
  wire [8:0] _GEN_0; // @[PipelineMac.scala 155:34:@2096.4]
  wire [9:0] _T_2593; // @[PipelineMac.scala 155:34:@2096.4]
  wire [9:0] _T_2594; // @[PipelineMac.scala 155:34:@2097.4]
  wire [8:0] _T_2595; // @[PipelineMac.scala 155:34:@2098.4]
  wire [9:0] _T_2597; // @[PipelineMac.scala 155:49:@2099.4]
  wire [9:0] _T_2598; // @[PipelineMac.scala 155:49:@2100.4]
  wire [8:0] exp_tmp; // @[PipelineMac.scala 155:49:@2101.4]
  wire  _T_2601; // @[PipelineMac.scala 156:47:@2103.4]
  wire [7:0] _T_2610; // @[PipelineMac.scala 158:72:@2110.4]
  reg  mac_output_reg_sign; // @[PipelineMac.scala 159:33:@2113.4]
  reg [31:0] _RAND_93;
  reg [7:0] mac_output_reg_exponent; // @[PipelineMac.scala 159:33:@2113.4]
  reg [31:0] _RAND_94;
  reg [22:0] mac_output_reg_mantissa; // @[PipelineMac.scala 159:33:@2113.4]
  reg [31:0] _RAND_95;
  PPGenerator PPGenerator ( // @[PipelineMac.scala 35:44:@1306.4]
    .io_in_input_sign(PPGenerator_io_in_input_sign),
    .io_in_input_exponent(PPGenerator_io_in_input_exponent),
    .io_in_input_mantissa(PPGenerator_io_in_input_mantissa),
    .io_out_pp_1(PPGenerator_io_out_pp_1),
    .io_out_exponent(PPGenerator_io_out_exponent)
  );
  PPGenerator PPGenerator_1 ( // @[PipelineMac.scala 35:44:@1309.4]
    .io_in_input_sign(PPGenerator_1_io_in_input_sign),
    .io_in_input_exponent(PPGenerator_1_io_in_input_exponent),
    .io_in_input_mantissa(PPGenerator_1_io_in_input_mantissa),
    .io_out_pp_1(PPGenerator_1_io_out_pp_1),
    .io_out_exponent(PPGenerator_1_io_out_exponent)
  );
  PPGenerator PPGenerator_2 ( // @[PipelineMac.scala 35:44:@1312.4]
    .io_in_input_sign(PPGenerator_2_io_in_input_sign),
    .io_in_input_exponent(PPGenerator_2_io_in_input_exponent),
    .io_in_input_mantissa(PPGenerator_2_io_in_input_mantissa),
    .io_out_pp_1(PPGenerator_2_io_out_pp_1),
    .io_out_exponent(PPGenerator_2_io_out_exponent)
  );
  PPGenerator PPGenerator_3 ( // @[PipelineMac.scala 35:44:@1315.4]
    .io_in_input_sign(PPGenerator_3_io_in_input_sign),
    .io_in_input_exponent(PPGenerator_3_io_in_input_exponent),
    .io_in_input_mantissa(PPGenerator_3_io_in_input_mantissa),
    .io_out_pp_1(PPGenerator_3_io_out_pp_1),
    .io_out_exponent(PPGenerator_3_io_out_exponent)
  );
  PPGenerator PPGenerator_4 ( // @[PipelineMac.scala 35:44:@1318.4]
    .io_in_input_sign(PPGenerator_4_io_in_input_sign),
    .io_in_input_exponent(PPGenerator_4_io_in_input_exponent),
    .io_in_input_mantissa(PPGenerator_4_io_in_input_mantissa),
    .io_out_pp_1(PPGenerator_4_io_out_pp_1),
    .io_out_exponent(PPGenerator_4_io_out_exponent)
  );
  PPGenerator PPGenerator_5 ( // @[PipelineMac.scala 35:44:@1321.4]
    .io_in_input_sign(PPGenerator_5_io_in_input_sign),
    .io_in_input_exponent(PPGenerator_5_io_in_input_exponent),
    .io_in_input_mantissa(PPGenerator_5_io_in_input_mantissa),
    .io_out_pp_1(PPGenerator_5_io_out_pp_1),
    .io_out_exponent(PPGenerator_5_io_out_exponent)
  );
  PPGenerator PPGenerator_6 ( // @[PipelineMac.scala 35:44:@1324.4]
    .io_in_input_sign(PPGenerator_6_io_in_input_sign),
    .io_in_input_exponent(PPGenerator_6_io_in_input_exponent),
    .io_in_input_mantissa(PPGenerator_6_io_in_input_mantissa),
    .io_out_pp_1(PPGenerator_6_io_out_pp_1),
    .io_out_exponent(PPGenerator_6_io_out_exponent)
  );
  PPGenerator PPGenerator_7 ( // @[PipelineMac.scala 35:44:@1327.4]
    .io_in_input_sign(PPGenerator_7_io_in_input_sign),
    .io_in_input_exponent(PPGenerator_7_io_in_input_exponent),
    .io_in_input_mantissa(PPGenerator_7_io_in_input_mantissa),
    .io_out_pp_1(PPGenerator_7_io_out_pp_1),
    .io_out_exponent(PPGenerator_7_io_out_exponent)
  );
  PPGenerator PPGenerator_8 ( // @[PipelineMac.scala 35:44:@1330.4]
    .io_in_input_sign(PPGenerator_8_io_in_input_sign),
    .io_in_input_exponent(PPGenerator_8_io_in_input_exponent),
    .io_in_input_mantissa(PPGenerator_8_io_in_input_mantissa),
    .io_out_pp_1(PPGenerator_8_io_out_pp_1),
    .io_out_exponent(PPGenerator_8_io_out_exponent)
  );
  Max_exp_determ Max_exp_determ ( // @[PipelineMac.scala 46:35:@1497.4]
    .io_in_skip(Max_exp_determ_io_in_skip),
    .io_in_exp_0(Max_exp_determ_io_in_exp_0),
    .io_in_exp_1(Max_exp_determ_io_in_exp_1),
    .io_in_exp_2(Max_exp_determ_io_in_exp_2),
    .io_in_exp_3(Max_exp_determ_io_in_exp_3),
    .io_in_exp_4(Max_exp_determ_io_in_exp_4),
    .io_in_exp_5(Max_exp_determ_io_in_exp_5),
    .io_in_exp_6(Max_exp_determ_io_in_exp_6),
    .io_in_exp_7(Max_exp_determ_io_in_exp_7),
    .io_in_exp_8(Max_exp_determ_io_in_exp_8),
    .io_out_max_exp(Max_exp_determ_io_out_max_exp)
  );
  Align_CG2 Align_CG2 ( // @[PipelineMac.scala 69:46:@1661.4]
    .io_in_pp1(Align_CG2_io_in_pp1),
    .io_in_pp2(Align_CG2_io_in_pp2),
    .io_in_exp(Align_CG2_io_in_exp),
    .io_in_max_exp(Align_CG2_io_in_max_exp),
    .io_out_align_pp1(Align_CG2_io_out_align_pp1),
    .io_out_align_pp2(Align_CG2_io_out_align_pp2)
  );
  Align_CG2 Align_CG2_1 ( // @[PipelineMac.scala 69:46:@1664.4]
    .io_in_pp1(Align_CG2_1_io_in_pp1),
    .io_in_pp2(Align_CG2_1_io_in_pp2),
    .io_in_exp(Align_CG2_1_io_in_exp),
    .io_in_max_exp(Align_CG2_1_io_in_max_exp),
    .io_out_align_pp1(Align_CG2_1_io_out_align_pp1),
    .io_out_align_pp2(Align_CG2_1_io_out_align_pp2)
  );
  Align_CG2 Align_CG2_2 ( // @[PipelineMac.scala 69:46:@1667.4]
    .io_in_pp1(Align_CG2_2_io_in_pp1),
    .io_in_pp2(Align_CG2_2_io_in_pp2),
    .io_in_exp(Align_CG2_2_io_in_exp),
    .io_in_max_exp(Align_CG2_2_io_in_max_exp),
    .io_out_align_pp1(Align_CG2_2_io_out_align_pp1),
    .io_out_align_pp2(Align_CG2_2_io_out_align_pp2)
  );
  Align_CG2 Align_CG2_3 ( // @[PipelineMac.scala 69:46:@1670.4]
    .io_in_pp1(Align_CG2_3_io_in_pp1),
    .io_in_pp2(Align_CG2_3_io_in_pp2),
    .io_in_exp(Align_CG2_3_io_in_exp),
    .io_in_max_exp(Align_CG2_3_io_in_max_exp),
    .io_out_align_pp1(Align_CG2_3_io_out_align_pp1),
    .io_out_align_pp2(Align_CG2_3_io_out_align_pp2)
  );
  Align_CG2 Align_CG2_4 ( // @[PipelineMac.scala 69:46:@1673.4]
    .io_in_pp1(Align_CG2_4_io_in_pp1),
    .io_in_pp2(Align_CG2_4_io_in_pp2),
    .io_in_exp(Align_CG2_4_io_in_exp),
    .io_in_max_exp(Align_CG2_4_io_in_max_exp),
    .io_out_align_pp1(Align_CG2_4_io_out_align_pp1),
    .io_out_align_pp2(Align_CG2_4_io_out_align_pp2)
  );
  Align_CG2 Align_CG2_5 ( // @[PipelineMac.scala 69:46:@1676.4]
    .io_in_pp1(Align_CG2_5_io_in_pp1),
    .io_in_pp2(Align_CG2_5_io_in_pp2),
    .io_in_exp(Align_CG2_5_io_in_exp),
    .io_in_max_exp(Align_CG2_5_io_in_max_exp),
    .io_out_align_pp1(Align_CG2_5_io_out_align_pp1),
    .io_out_align_pp2(Align_CG2_5_io_out_align_pp2)
  );
  Align_CG2 Align_CG2_6 ( // @[PipelineMac.scala 69:46:@1679.4]
    .io_in_pp1(Align_CG2_6_io_in_pp1),
    .io_in_pp2(Align_CG2_6_io_in_pp2),
    .io_in_exp(Align_CG2_6_io_in_exp),
    .io_in_max_exp(Align_CG2_6_io_in_max_exp),
    .io_out_align_pp1(Align_CG2_6_io_out_align_pp1),
    .io_out_align_pp2(Align_CG2_6_io_out_align_pp2)
  );
  Align_CG2 Align_CG2_7 ( // @[PipelineMac.scala 69:46:@1682.4]
    .io_in_pp1(Align_CG2_7_io_in_pp1),
    .io_in_pp2(Align_CG2_7_io_in_pp2),
    .io_in_exp(Align_CG2_7_io_in_exp),
    .io_in_max_exp(Align_CG2_7_io_in_max_exp),
    .io_out_align_pp1(Align_CG2_7_io_out_align_pp1),
    .io_out_align_pp2(Align_CG2_7_io_out_align_pp2)
  );
  Align_CG2 Align_CG2_8 ( // @[PipelineMac.scala 69:46:@1685.4]
    .io_in_pp1(Align_CG2_8_io_in_pp1),
    .io_in_pp2(Align_CG2_8_io_in_pp2),
    .io_in_exp(Align_CG2_8_io_in_exp),
    .io_in_max_exp(Align_CG2_8_io_in_max_exp),
    .io_out_align_pp1(Align_CG2_8_io_out_align_pp1),
    .io_out_align_pp2(Align_CG2_8_io_out_align_pp2)
  );
  treeadder treeadder ( // @[PipelineMac.scala 103:35:@1972.4]
    .io_in_0(treeadder_io_in_0),
    .io_in_1(treeadder_io_in_1),
    .io_in_2(treeadder_io_in_2),
    .io_in_3(treeadder_io_in_3),
    .io_in_4(treeadder_io_in_4),
    .io_in_5(treeadder_io_in_5),
    .io_in_6(treeadder_io_in_6),
    .io_in_7(treeadder_io_in_7),
    .io_in_8(treeadder_io_in_8),
    .io_in_9(treeadder_io_in_9),
    .io_in_10(treeadder_io_in_10),
    .io_in_11(treeadder_io_in_11),
    .io_in_12(treeadder_io_in_12),
    .io_in_13(treeadder_io_in_13),
    .io_in_14(treeadder_io_in_14),
    .io_in_15(treeadder_io_in_15),
    .io_in_16(treeadder_io_in_16),
    .io_in_17(treeadder_io_in_17),
    .io_out(treeadder_io_out)
  );
  final_norm_noSUB final_norm_noSUB ( // @[PipelineMac.scala 131:29:@2064.4]
    .io_PP_sum(final_norm_noSUB_io_PP_sum),
    .io_norm_sum(final_norm_noSUB_io_norm_sum),
    .io_norm_exp(final_norm_noSUB_io_norm_exp),
    .io_sign(final_norm_noSUB_io_sign)
  );
  assign _T_464 = io_in_skip[0]; // @[PipelineMac.scala 28:49:@1249.4]
  assign _T_466 = _T_464 == 1'h0; // @[PipelineMac.scala 28:53:@1250.4]
  assign _T_468 = io_in_skip[1]; // @[PipelineMac.scala 28:49:@1255.4]
  assign _T_470 = _T_468 == 1'h0; // @[PipelineMac.scala 28:53:@1256.4]
  assign _T_472 = io_in_skip[2]; // @[PipelineMac.scala 28:49:@1261.4]
  assign _T_474 = _T_472 == 1'h0; // @[PipelineMac.scala 28:53:@1262.4]
  assign _T_476 = io_in_skip[3]; // @[PipelineMac.scala 28:49:@1267.4]
  assign _T_478 = _T_476 == 1'h0; // @[PipelineMac.scala 28:53:@1268.4]
  assign _T_480 = io_in_skip[4]; // @[PipelineMac.scala 28:49:@1273.4]
  assign _T_482 = _T_480 == 1'h0; // @[PipelineMac.scala 28:53:@1274.4]
  assign _T_484 = io_in_skip[5]; // @[PipelineMac.scala 28:49:@1279.4]
  assign _T_486 = _T_484 == 1'h0; // @[PipelineMac.scala 28:53:@1280.4]
  assign _T_488 = io_in_skip[6]; // @[PipelineMac.scala 28:49:@1285.4]
  assign _T_490 = _T_488 == 1'h0; // @[PipelineMac.scala 28:53:@1286.4]
  assign _T_492 = io_in_skip[7]; // @[PipelineMac.scala 28:49:@1291.4]
  assign _T_494 = _T_492 == 1'h0; // @[PipelineMac.scala 28:53:@1292.4]
  assign _T_496 = io_in_skip[8]; // @[PipelineMac.scala 28:49:@1297.4]
  assign _T_498 = _T_496 == 1'h0; // @[PipelineMac.scala 28:53:@1298.4]
  assign _T_1510 = skip_1_reg[8]; // @[PipelineMac.scala 59:47:@1515.4]
  assign _T_1512 = _T_1510 == 1'h0; // @[PipelineMac.scala 59:53:@1516.4]
  assign gen_pp_io_0_out_pp_1 = PPGenerator_io_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1336.4]
  assign gen_pp_io_0_out_exponent = PPGenerator_io_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1334.4]
  assign max_exp = Max_exp_determ_io_out_max_exp; // @[PipelineMac.scala 45:27:@1496.4 PipelineMac.scala 51:17:@1510.4]
  assign _T_1526 = skip_1_reg[7]; // @[PipelineMac.scala 59:47:@1531.4]
  assign _T_1528 = _T_1526 == 1'h0; // @[PipelineMac.scala 59:53:@1532.4]
  assign gen_pp_io_1_out_pp_1 = PPGenerator_1_io_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1345.4]
  assign gen_pp_io_1_out_exponent = PPGenerator_1_io_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1343.4]
  assign _T_1542 = skip_1_reg[6]; // @[PipelineMac.scala 59:47:@1547.4]
  assign _T_1544 = _T_1542 == 1'h0; // @[PipelineMac.scala 59:53:@1548.4]
  assign gen_pp_io_2_out_pp_1 = PPGenerator_2_io_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1354.4]
  assign gen_pp_io_2_out_exponent = PPGenerator_2_io_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1352.4]
  assign _T_1558 = skip_1_reg[5]; // @[PipelineMac.scala 59:47:@1563.4]
  assign _T_1560 = _T_1558 == 1'h0; // @[PipelineMac.scala 59:53:@1564.4]
  assign gen_pp_io_3_out_pp_1 = PPGenerator_3_io_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1363.4]
  assign gen_pp_io_3_out_exponent = PPGenerator_3_io_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1361.4]
  assign _T_1574 = skip_1_reg[4]; // @[PipelineMac.scala 59:47:@1579.4]
  assign _T_1576 = _T_1574 == 1'h0; // @[PipelineMac.scala 59:53:@1580.4]
  assign gen_pp_io_4_out_pp_1 = PPGenerator_4_io_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1372.4]
  assign gen_pp_io_4_out_exponent = PPGenerator_4_io_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1370.4]
  assign _T_1590 = skip_1_reg[3]; // @[PipelineMac.scala 59:47:@1595.4]
  assign _T_1592 = _T_1590 == 1'h0; // @[PipelineMac.scala 59:53:@1596.4]
  assign gen_pp_io_5_out_pp_1 = PPGenerator_5_io_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1381.4]
  assign gen_pp_io_5_out_exponent = PPGenerator_5_io_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1379.4]
  assign _T_1606 = skip_1_reg[2]; // @[PipelineMac.scala 59:47:@1611.4]
  assign _T_1608 = _T_1606 == 1'h0; // @[PipelineMac.scala 59:53:@1612.4]
  assign gen_pp_io_6_out_pp_1 = PPGenerator_6_io_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1390.4]
  assign gen_pp_io_6_out_exponent = PPGenerator_6_io_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1388.4]
  assign _T_1622 = skip_1_reg[1]; // @[PipelineMac.scala 59:47:@1627.4]
  assign _T_1624 = _T_1622 == 1'h0; // @[PipelineMac.scala 59:53:@1628.4]
  assign gen_pp_io_7_out_pp_1 = PPGenerator_7_io_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1399.4]
  assign gen_pp_io_7_out_exponent = PPGenerator_7_io_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1397.4]
  assign _T_1638 = skip_1_reg[0]; // @[PipelineMac.scala 59:47:@1643.4]
  assign _T_1640 = _T_1638 == 1'h0; // @[PipelineMac.scala 59:53:@1644.4]
  assign gen_pp_io_8_out_pp_1 = PPGenerator_8_io_out_pp_1; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1408.4]
  assign gen_pp_io_8_out_exponent = PPGenerator_8_io_out_exponent; // @[PipelineMac.scala 35:37:@1333.4 PipelineMac.scala 35:37:@1406.4]
  assign _T_2023 = skip_2_reg[8]; // @[PipelineMac.scala 85:54:@1803.4]
  assign align_pp_io_0_out_align_pp1 = Align_CG2_io_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1690.4]
  assign align_pp_io_0_out_align_pp2 = Align_CG2_io_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1689.4]
  assign _T_2031 = skip_2_reg[7]; // @[PipelineMac.scala 85:54:@1813.4]
  assign align_pp_io_1_out_align_pp1 = Align_CG2_1_io_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1696.4]
  assign align_pp_io_1_out_align_pp2 = Align_CG2_1_io_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1695.4]
  assign _T_2039 = skip_2_reg[6]; // @[PipelineMac.scala 85:54:@1823.4]
  assign align_pp_io_2_out_align_pp1 = Align_CG2_2_io_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1702.4]
  assign align_pp_io_2_out_align_pp2 = Align_CG2_2_io_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1701.4]
  assign _T_2047 = skip_2_reg[5]; // @[PipelineMac.scala 85:54:@1833.4]
  assign align_pp_io_3_out_align_pp1 = Align_CG2_3_io_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1708.4]
  assign align_pp_io_3_out_align_pp2 = Align_CG2_3_io_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1707.4]
  assign _T_2055 = skip_2_reg[4]; // @[PipelineMac.scala 85:54:@1843.4]
  assign align_pp_io_4_out_align_pp1 = Align_CG2_4_io_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1714.4]
  assign align_pp_io_4_out_align_pp2 = Align_CG2_4_io_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1713.4]
  assign _T_2063 = skip_2_reg[3]; // @[PipelineMac.scala 85:54:@1853.4]
  assign align_pp_io_5_out_align_pp1 = Align_CG2_5_io_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1720.4]
  assign align_pp_io_5_out_align_pp2 = Align_CG2_5_io_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1719.4]
  assign _T_2071 = skip_2_reg[2]; // @[PipelineMac.scala 85:54:@1863.4]
  assign align_pp_io_6_out_align_pp1 = Align_CG2_6_io_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1726.4]
  assign align_pp_io_6_out_align_pp2 = Align_CG2_6_io_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1725.4]
  assign _T_2079 = skip_2_reg[1]; // @[PipelineMac.scala 85:54:@1873.4]
  assign align_pp_io_7_out_align_pp1 = Align_CG2_7_io_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1732.4]
  assign align_pp_io_7_out_align_pp2 = Align_CG2_7_io_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1731.4]
  assign _T_2087 = skip_2_reg[0]; // @[PipelineMac.scala 85:54:@1883.4]
  assign align_pp_io_8_out_align_pp1 = Align_CG2_8_io_out_align_pp1; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1738.4]
  assign align_pp_io_8_out_align_pp2 = Align_CG2_8_io_out_align_pp2; // @[PipelineMac.scala 69:39:@1688.4 PipelineMac.scala 69:39:@1737.4]
  assign _T_2264 = _T_2023 == 1'h0; // @[PipelineMac.scala 94:58:@1897.4]
  assign _T_2272 = _T_2031 == 1'h0; // @[PipelineMac.scala 94:58:@1905.4]
  assign _T_2280 = _T_2039 == 1'h0; // @[PipelineMac.scala 94:58:@1913.4]
  assign _T_2288 = _T_2047 == 1'h0; // @[PipelineMac.scala 94:58:@1921.4]
  assign _T_2296 = _T_2055 == 1'h0; // @[PipelineMac.scala 94:58:@1929.4]
  assign _T_2304 = _T_2063 == 1'h0; // @[PipelineMac.scala 94:58:@1937.4]
  assign _T_2312 = _T_2071 == 1'h0; // @[PipelineMac.scala 94:58:@1945.4]
  assign _T_2320 = _T_2079 == 1'h0; // @[PipelineMac.scala 94:58:@1953.4]
  assign _T_2328 = _T_2087 == 1'h0; // @[PipelineMac.scala 94:58:@1961.4]
  assign _T_2501 = skip_3_reg[8]; // @[PipelineMac.scala 106:54:@1976.4]
  assign align_pp_tree_0_0 = _T_2501 ? align_pp_reg_0_0 : 24'h0; // @[PipelineMac.scala 106:43:@1977.4]
  assign align_pp_tree_0_1 = _T_2501 ? align_pp_reg_0_1 : 24'h0; // @[PipelineMac.scala 107:43:@1980.4]
  assign _T_2507 = skip_3_reg[7]; // @[PipelineMac.scala 106:54:@1982.4]
  assign align_pp_tree_1_0 = _T_2507 ? align_pp_reg_1_0 : 24'h0; // @[PipelineMac.scala 106:43:@1983.4]
  assign align_pp_tree_1_1 = _T_2507 ? align_pp_reg_1_1 : 24'h0; // @[PipelineMac.scala 107:43:@1986.4]
  assign _T_2513 = skip_3_reg[6]; // @[PipelineMac.scala 106:54:@1988.4]
  assign align_pp_tree_2_0 = _T_2513 ? align_pp_reg_2_0 : 24'h0; // @[PipelineMac.scala 106:43:@1989.4]
  assign align_pp_tree_2_1 = _T_2513 ? align_pp_reg_2_1 : 24'h0; // @[PipelineMac.scala 107:43:@1992.4]
  assign _T_2519 = skip_3_reg[5]; // @[PipelineMac.scala 106:54:@1994.4]
  assign align_pp_tree_3_0 = _T_2519 ? align_pp_reg_3_0 : 24'h0; // @[PipelineMac.scala 106:43:@1995.4]
  assign align_pp_tree_3_1 = _T_2519 ? align_pp_reg_3_1 : 24'h0; // @[PipelineMac.scala 107:43:@1998.4]
  assign _T_2525 = skip_3_reg[4]; // @[PipelineMac.scala 106:54:@2000.4]
  assign align_pp_tree_4_0 = _T_2525 ? align_pp_reg_4_0 : 24'h0; // @[PipelineMac.scala 106:43:@2001.4]
  assign align_pp_tree_4_1 = _T_2525 ? align_pp_reg_4_1 : 24'h0; // @[PipelineMac.scala 107:43:@2004.4]
  assign _T_2531 = skip_3_reg[3]; // @[PipelineMac.scala 106:54:@2006.4]
  assign align_pp_tree_5_0 = _T_2531 ? align_pp_reg_5_0 : 24'h0; // @[PipelineMac.scala 106:43:@2007.4]
  assign align_pp_tree_5_1 = _T_2531 ? align_pp_reg_5_1 : 24'h0; // @[PipelineMac.scala 107:43:@2010.4]
  assign _T_2537 = skip_3_reg[2]; // @[PipelineMac.scala 106:54:@2012.4]
  assign align_pp_tree_6_0 = _T_2537 ? align_pp_reg_6_0 : 24'h0; // @[PipelineMac.scala 106:43:@2013.4]
  assign align_pp_tree_6_1 = _T_2537 ? align_pp_reg_6_1 : 24'h0; // @[PipelineMac.scala 107:43:@2016.4]
  assign _T_2543 = skip_3_reg[1]; // @[PipelineMac.scala 106:54:@2018.4]
  assign align_pp_tree_7_0 = _T_2543 ? align_pp_reg_7_0 : 24'h0; // @[PipelineMac.scala 106:43:@2019.4]
  assign align_pp_tree_7_1 = _T_2543 ? align_pp_reg_7_1 : 24'h0; // @[PipelineMac.scala 107:43:@2022.4]
  assign _T_2549 = skip_3_reg[0]; // @[PipelineMac.scala 106:54:@2024.4]
  assign align_pp_tree_8_0 = _T_2549 ? align_pp_reg_8_0 : 24'h0; // @[PipelineMac.scala 106:43:@2025.4]
  assign align_pp_tree_8_1 = _T_2549 ? align_pp_reg_8_1 : 24'h0; // @[PipelineMac.scala 107:43:@2028.4]
  assign _T_2556 = ~ skip_3_reg; // @[PipelineMac.scala 117:30:@2050.4]
  assign skip_4 = _T_2556 == 9'h0; // @[PipelineMac.scala 117:30:@2051.4]
  assign _T_2563 = skip_4 == 1'h0; // @[PipelineMac.scala 123:31:@2056.4]
  assign out = treeadder_io_out; // @[PipelineMac.scala 104:23:@1975.4 PipelineMac.scala 110:13:@2030.4]
  assign _T_2580 = skip_4_reg == 1'h0; // @[PipelineMac.scala 147:40:@2081.4]
  assign norm_sum = final_norm_noSUB_io_norm_sum; // @[PipelineMac.scala 128:28:@2061.4 PipelineMac.scala 134:18:@2069.4]
  assign exp_diff = final_norm_noSUB_io_norm_exp; // @[PipelineMac.scala 129:28:@2062.4 PipelineMac.scala 135:18:@2070.4]
  assign sign = final_norm_noSUB_io_sign; // @[PipelineMac.scala 130:24:@2063.4 PipelineMac.scala 136:14:@2071.4]
  assign _GEN_0 = {{1'd0}, exp_diff_reg}; // @[PipelineMac.scala 155:34:@2096.4]
  assign _T_2593 = max_exp_reg_4 - _GEN_0; // @[PipelineMac.scala 155:34:@2096.4]
  assign _T_2594 = $unsigned(_T_2593); // @[PipelineMac.scala 155:34:@2097.4]
  assign _T_2595 = _T_2594[8:0]; // @[PipelineMac.scala 155:34:@2098.4]
  assign _T_2597 = _T_2595 - 9'h76; // @[PipelineMac.scala 155:49:@2099.4]
  assign _T_2598 = $unsigned(_T_2597); // @[PipelineMac.scala 155:49:@2100.4]
  assign exp_tmp = _T_2598[8:0]; // @[PipelineMac.scala 155:49:@2101.4]
  assign _T_2601 = skip_5_reg == 1'h0; // @[PipelineMac.scala 156:47:@2103.4]
  assign _T_2610 = exp_tmp[7:0]; // @[PipelineMac.scala 158:72:@2110.4]
  assign io_out_sign = mac_output_reg_sign; // @[PipelineMac.scala 161:16:@2119.4]
  assign io_out_exponent = mac_output_reg_exponent; // @[PipelineMac.scala 161:16:@2118.4]
  assign io_out_mantissa = mac_output_reg_mantissa; // @[PipelineMac.scala 161:16:@2117.4]
  assign PPGenerator_io_in_input_sign = input_x_reg_0_sign; // @[PipelineMac.scala 35:37:@1342.4]
  assign PPGenerator_io_in_input_exponent = input_x_reg_0_exponent; // @[PipelineMac.scala 35:37:@1341.4]
  assign PPGenerator_io_in_input_mantissa = input_x_reg_0_mantissa; // @[PipelineMac.scala 35:37:@1340.4]
  assign PPGenerator_1_io_in_input_sign = input_x_reg_1_sign; // @[PipelineMac.scala 35:37:@1351.4]
  assign PPGenerator_1_io_in_input_exponent = input_x_reg_1_exponent; // @[PipelineMac.scala 35:37:@1350.4]
  assign PPGenerator_1_io_in_input_mantissa = input_x_reg_1_mantissa; // @[PipelineMac.scala 35:37:@1349.4]
  assign PPGenerator_2_io_in_input_sign = input_x_reg_2_sign; // @[PipelineMac.scala 35:37:@1360.4]
  assign PPGenerator_2_io_in_input_exponent = input_x_reg_2_exponent; // @[PipelineMac.scala 35:37:@1359.4]
  assign PPGenerator_2_io_in_input_mantissa = input_x_reg_2_mantissa; // @[PipelineMac.scala 35:37:@1358.4]
  assign PPGenerator_3_io_in_input_sign = input_x_reg_3_sign; // @[PipelineMac.scala 35:37:@1369.4]
  assign PPGenerator_3_io_in_input_exponent = input_x_reg_3_exponent; // @[PipelineMac.scala 35:37:@1368.4]
  assign PPGenerator_3_io_in_input_mantissa = input_x_reg_3_mantissa; // @[PipelineMac.scala 35:37:@1367.4]
  assign PPGenerator_4_io_in_input_sign = input_x_reg_4_sign; // @[PipelineMac.scala 35:37:@1378.4]
  assign PPGenerator_4_io_in_input_exponent = input_x_reg_4_exponent; // @[PipelineMac.scala 35:37:@1377.4]
  assign PPGenerator_4_io_in_input_mantissa = input_x_reg_4_mantissa; // @[PipelineMac.scala 35:37:@1376.4]
  assign PPGenerator_5_io_in_input_sign = input_x_reg_5_sign; // @[PipelineMac.scala 35:37:@1387.4]
  assign PPGenerator_5_io_in_input_exponent = input_x_reg_5_exponent; // @[PipelineMac.scala 35:37:@1386.4]
  assign PPGenerator_5_io_in_input_mantissa = input_x_reg_5_mantissa; // @[PipelineMac.scala 35:37:@1385.4]
  assign PPGenerator_6_io_in_input_sign = input_x_reg_6_sign; // @[PipelineMac.scala 35:37:@1396.4]
  assign PPGenerator_6_io_in_input_exponent = input_x_reg_6_exponent; // @[PipelineMac.scala 35:37:@1395.4]
  assign PPGenerator_6_io_in_input_mantissa = input_x_reg_6_mantissa; // @[PipelineMac.scala 35:37:@1394.4]
  assign PPGenerator_7_io_in_input_sign = input_x_reg_7_sign; // @[PipelineMac.scala 35:37:@1405.4]
  assign PPGenerator_7_io_in_input_exponent = input_x_reg_7_exponent; // @[PipelineMac.scala 35:37:@1404.4]
  assign PPGenerator_7_io_in_input_mantissa = input_x_reg_7_mantissa; // @[PipelineMac.scala 35:37:@1403.4]
  assign PPGenerator_8_io_in_input_sign = input_x_reg_8_sign; // @[PipelineMac.scala 35:37:@1414.4]
  assign PPGenerator_8_io_in_input_exponent = input_x_reg_8_exponent; // @[PipelineMac.scala 35:37:@1413.4]
  assign PPGenerator_8_io_in_input_mantissa = input_x_reg_8_mantissa; // @[PipelineMac.scala 35:37:@1412.4]
  assign Max_exp_determ_io_in_skip = skip_1_reg; // @[PipelineMac.scala 47:31:@1500.4]
  assign Max_exp_determ_io_in_exp_0 = PPGenerator_io_out_exponent; // @[PipelineMac.scala 49:41:@1501.4]
  assign Max_exp_determ_io_in_exp_1 = PPGenerator_1_io_out_exponent; // @[PipelineMac.scala 49:41:@1502.4]
  assign Max_exp_determ_io_in_exp_2 = PPGenerator_2_io_out_exponent; // @[PipelineMac.scala 49:41:@1503.4]
  assign Max_exp_determ_io_in_exp_3 = PPGenerator_3_io_out_exponent; // @[PipelineMac.scala 49:41:@1504.4]
  assign Max_exp_determ_io_in_exp_4 = PPGenerator_4_io_out_exponent; // @[PipelineMac.scala 49:41:@1505.4]
  assign Max_exp_determ_io_in_exp_5 = PPGenerator_5_io_out_exponent; // @[PipelineMac.scala 49:41:@1506.4]
  assign Max_exp_determ_io_in_exp_6 = PPGenerator_6_io_out_exponent; // @[PipelineMac.scala 49:41:@1507.4]
  assign Max_exp_determ_io_in_exp_7 = PPGenerator_7_io_out_exponent; // @[PipelineMac.scala 49:41:@1508.4]
  assign Max_exp_determ_io_in_exp_8 = PPGenerator_8_io_out_exponent; // @[PipelineMac.scala 49:41:@1509.4]
  assign Align_CG2_io_in_pp1 = pp_reg_0_0; // @[PipelineMac.scala 69:39:@1694.4]
  assign Align_CG2_io_in_pp2 = pp_reg_0_1; // @[PipelineMac.scala 69:39:@1693.4]
  assign Align_CG2_io_in_exp = exp_reg_0; // @[PipelineMac.scala 69:39:@1692.4]
  assign Align_CG2_io_in_max_exp = max_exp_reg__0; // @[PipelineMac.scala 69:39:@1691.4]
  assign Align_CG2_1_io_in_pp1 = pp_reg_1_0; // @[PipelineMac.scala 69:39:@1700.4]
  assign Align_CG2_1_io_in_pp2 = pp_reg_1_1; // @[PipelineMac.scala 69:39:@1699.4]
  assign Align_CG2_1_io_in_exp = exp_reg_1; // @[PipelineMac.scala 69:39:@1698.4]
  assign Align_CG2_1_io_in_max_exp = max_exp_reg__1; // @[PipelineMac.scala 69:39:@1697.4]
  assign Align_CG2_2_io_in_pp1 = pp_reg_2_0; // @[PipelineMac.scala 69:39:@1706.4]
  assign Align_CG2_2_io_in_pp2 = pp_reg_2_1; // @[PipelineMac.scala 69:39:@1705.4]
  assign Align_CG2_2_io_in_exp = exp_reg_2; // @[PipelineMac.scala 69:39:@1704.4]
  assign Align_CG2_2_io_in_max_exp = max_exp_reg__2; // @[PipelineMac.scala 69:39:@1703.4]
  assign Align_CG2_3_io_in_pp1 = pp_reg_3_0; // @[PipelineMac.scala 69:39:@1712.4]
  assign Align_CG2_3_io_in_pp2 = pp_reg_3_1; // @[PipelineMac.scala 69:39:@1711.4]
  assign Align_CG2_3_io_in_exp = exp_reg_3; // @[PipelineMac.scala 69:39:@1710.4]
  assign Align_CG2_3_io_in_max_exp = max_exp_reg__3; // @[PipelineMac.scala 69:39:@1709.4]
  assign Align_CG2_4_io_in_pp1 = pp_reg_4_0; // @[PipelineMac.scala 69:39:@1718.4]
  assign Align_CG2_4_io_in_pp2 = pp_reg_4_1; // @[PipelineMac.scala 69:39:@1717.4]
  assign Align_CG2_4_io_in_exp = exp_reg_4; // @[PipelineMac.scala 69:39:@1716.4]
  assign Align_CG2_4_io_in_max_exp = max_exp_reg__4; // @[PipelineMac.scala 69:39:@1715.4]
  assign Align_CG2_5_io_in_pp1 = pp_reg_5_0; // @[PipelineMac.scala 69:39:@1724.4]
  assign Align_CG2_5_io_in_pp2 = pp_reg_5_1; // @[PipelineMac.scala 69:39:@1723.4]
  assign Align_CG2_5_io_in_exp = exp_reg_5; // @[PipelineMac.scala 69:39:@1722.4]
  assign Align_CG2_5_io_in_max_exp = max_exp_reg__5; // @[PipelineMac.scala 69:39:@1721.4]
  assign Align_CG2_6_io_in_pp1 = pp_reg_6_0; // @[PipelineMac.scala 69:39:@1730.4]
  assign Align_CG2_6_io_in_pp2 = pp_reg_6_1; // @[PipelineMac.scala 69:39:@1729.4]
  assign Align_CG2_6_io_in_exp = exp_reg_6; // @[PipelineMac.scala 69:39:@1728.4]
  assign Align_CG2_6_io_in_max_exp = max_exp_reg__6; // @[PipelineMac.scala 69:39:@1727.4]
  assign Align_CG2_7_io_in_pp1 = pp_reg_7_0; // @[PipelineMac.scala 69:39:@1736.4]
  assign Align_CG2_7_io_in_pp2 = pp_reg_7_1; // @[PipelineMac.scala 69:39:@1735.4]
  assign Align_CG2_7_io_in_exp = exp_reg_7; // @[PipelineMac.scala 69:39:@1734.4]
  assign Align_CG2_7_io_in_max_exp = max_exp_reg__7; // @[PipelineMac.scala 69:39:@1733.4]
  assign Align_CG2_8_io_in_pp1 = pp_reg_8_0; // @[PipelineMac.scala 69:39:@1742.4]
  assign Align_CG2_8_io_in_pp2 = pp_reg_8_1; // @[PipelineMac.scala 69:39:@1741.4]
  assign Align_CG2_8_io_in_exp = exp_reg_8; // @[PipelineMac.scala 69:39:@1740.4]
  assign Align_CG2_8_io_in_max_exp = max_exp_reg__8; // @[PipelineMac.scala 69:39:@1739.4]
  assign treeadder_io_in_0 = align_pp_tree_0_0[22:0]; // @[PipelineMac.scala 112:39:@2031.4]
  assign treeadder_io_in_1 = align_pp_tree_0_1[22:0]; // @[PipelineMac.scala 113:41:@2032.4]
  assign treeadder_io_in_2 = align_pp_tree_1_0[22:0]; // @[PipelineMac.scala 112:39:@2033.4]
  assign treeadder_io_in_3 = align_pp_tree_1_1[22:0]; // @[PipelineMac.scala 113:41:@2034.4]
  assign treeadder_io_in_4 = align_pp_tree_2_0[22:0]; // @[PipelineMac.scala 112:39:@2035.4]
  assign treeadder_io_in_5 = align_pp_tree_2_1[22:0]; // @[PipelineMac.scala 113:41:@2036.4]
  assign treeadder_io_in_6 = align_pp_tree_3_0[22:0]; // @[PipelineMac.scala 112:39:@2037.4]
  assign treeadder_io_in_7 = align_pp_tree_3_1[22:0]; // @[PipelineMac.scala 113:41:@2038.4]
  assign treeadder_io_in_8 = align_pp_tree_4_0[22:0]; // @[PipelineMac.scala 112:39:@2039.4]
  assign treeadder_io_in_9 = align_pp_tree_4_1[22:0]; // @[PipelineMac.scala 113:41:@2040.4]
  assign treeadder_io_in_10 = align_pp_tree_5_0[22:0]; // @[PipelineMac.scala 112:39:@2041.4]
  assign treeadder_io_in_11 = align_pp_tree_5_1[22:0]; // @[PipelineMac.scala 113:41:@2042.4]
  assign treeadder_io_in_12 = align_pp_tree_6_0[22:0]; // @[PipelineMac.scala 112:39:@2043.4]
  assign treeadder_io_in_13 = align_pp_tree_6_1[22:0]; // @[PipelineMac.scala 113:41:@2044.4]
  assign treeadder_io_in_14 = align_pp_tree_7_0[22:0]; // @[PipelineMac.scala 112:39:@2045.4]
  assign treeadder_io_in_15 = align_pp_tree_7_1[22:0]; // @[PipelineMac.scala 113:41:@2046.4]
  assign treeadder_io_in_16 = align_pp_tree_8_0[22:0]; // @[PipelineMac.scala 112:39:@2047.4]
  assign treeadder_io_in_17 = align_pp_tree_8_1[22:0]; // @[PipelineMac.scala 113:41:@2048.4]
  assign final_norm_noSUB_io_PP_sum = {{1'd0}, out_reg}; // @[PipelineMac.scala 133:24:@2068.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  input_x_reg_0_sign = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  input_x_reg_0_exponent = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  input_x_reg_0_mantissa = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  input_x_reg_1_sign = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  input_x_reg_1_exponent = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  input_x_reg_1_mantissa = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  input_x_reg_2_sign = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  input_x_reg_2_exponent = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  input_x_reg_2_mantissa = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  input_x_reg_3_sign = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  input_x_reg_3_exponent = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  input_x_reg_3_mantissa = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  input_x_reg_4_sign = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  input_x_reg_4_exponent = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  input_x_reg_4_mantissa = _RAND_14[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  input_x_reg_5_sign = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  input_x_reg_5_exponent = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  input_x_reg_5_mantissa = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  input_x_reg_6_sign = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  input_x_reg_6_exponent = _RAND_19[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  input_x_reg_6_mantissa = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  input_x_reg_7_sign = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  input_x_reg_7_exponent = _RAND_22[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  input_x_reg_7_mantissa = _RAND_23[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  input_x_reg_8_sign = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  input_x_reg_8_exponent = _RAND_25[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  input_x_reg_8_mantissa = _RAND_26[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  skip_1_reg = _RAND_27[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  pp_reg_0_0 = _RAND_28[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  pp_reg_0_1 = _RAND_29[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  pp_reg_1_0 = _RAND_30[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  pp_reg_1_1 = _RAND_31[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  pp_reg_2_0 = _RAND_32[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  pp_reg_2_1 = _RAND_33[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  pp_reg_3_0 = _RAND_34[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  pp_reg_3_1 = _RAND_35[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  pp_reg_4_0 = _RAND_36[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  pp_reg_4_1 = _RAND_37[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  pp_reg_5_0 = _RAND_38[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  pp_reg_5_1 = _RAND_39[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  pp_reg_6_0 = _RAND_40[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  pp_reg_6_1 = _RAND_41[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  pp_reg_7_0 = _RAND_42[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  pp_reg_7_1 = _RAND_43[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  pp_reg_8_0 = _RAND_44[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  pp_reg_8_1 = _RAND_45[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  exp_reg_0 = _RAND_46[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  exp_reg_1 = _RAND_47[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  exp_reg_2 = _RAND_48[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  exp_reg_3 = _RAND_49[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  exp_reg_4 = _RAND_50[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  exp_reg_5 = _RAND_51[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  exp_reg_6 = _RAND_52[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  exp_reg_7 = _RAND_53[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  exp_reg_8 = _RAND_54[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  max_exp_reg__0 = _RAND_55[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  max_exp_reg__1 = _RAND_56[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  max_exp_reg__2 = _RAND_57[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  max_exp_reg__3 = _RAND_58[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  max_exp_reg__4 = _RAND_59[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  max_exp_reg__5 = _RAND_60[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  max_exp_reg__6 = _RAND_61[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  max_exp_reg__7 = _RAND_62[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  max_exp_reg__8 = _RAND_63[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  skip_2_reg = _RAND_64[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  skip_3_reg = _RAND_65[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  max_exp_reg_2 = _RAND_66[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  align_pp_reg_0_0 = _RAND_67[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  align_pp_reg_0_1 = _RAND_68[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  align_pp_reg_1_0 = _RAND_69[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  align_pp_reg_1_1 = _RAND_70[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  align_pp_reg_2_0 = _RAND_71[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  align_pp_reg_2_1 = _RAND_72[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  align_pp_reg_3_0 = _RAND_73[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  align_pp_reg_3_1 = _RAND_74[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  align_pp_reg_4_0 = _RAND_75[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  align_pp_reg_4_1 = _RAND_76[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  align_pp_reg_5_0 = _RAND_77[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  align_pp_reg_5_1 = _RAND_78[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  align_pp_reg_6_0 = _RAND_79[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  align_pp_reg_6_1 = _RAND_80[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  align_pp_reg_7_0 = _RAND_81[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  align_pp_reg_7_1 = _RAND_82[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  align_pp_reg_8_0 = _RAND_83[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  align_pp_reg_8_1 = _RAND_84[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  skip_4_reg = _RAND_85[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  out_reg = _RAND_86[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  max_exp_reg_3 = _RAND_87[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  norm_sum_reg = _RAND_88[22:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{`RANDOM}};
  exp_diff_reg = _RAND_89[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  max_exp_reg_4 = _RAND_90[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  sign_reg = _RAND_91[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  skip_5_reg = _RAND_92[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{`RANDOM}};
  mac_output_reg_sign = _RAND_93[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  mac_output_reg_exponent = _RAND_94[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{`RANDOM}};
  mac_output_reg_mantissa = _RAND_95[22:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_466) begin
      input_x_reg_0_sign <= io_in_input_x_0_sign;
    end
    if (_T_466) begin
      input_x_reg_0_exponent <= io_in_input_x_0_exponent;
    end
    if (_T_466) begin
      input_x_reg_0_mantissa <= io_in_input_x_0_mantissa;
    end
    if (_T_470) begin
      input_x_reg_1_sign <= io_in_input_x_1_sign;
    end
    if (_T_470) begin
      input_x_reg_1_exponent <= io_in_input_x_1_exponent;
    end
    if (_T_470) begin
      input_x_reg_1_mantissa <= io_in_input_x_1_mantissa;
    end
    if (_T_474) begin
      input_x_reg_2_sign <= io_in_input_x_2_sign;
    end
    if (_T_474) begin
      input_x_reg_2_exponent <= io_in_input_x_2_exponent;
    end
    if (_T_474) begin
      input_x_reg_2_mantissa <= io_in_input_x_2_mantissa;
    end
    if (_T_478) begin
      input_x_reg_3_sign <= io_in_input_x_3_sign;
    end
    if (_T_478) begin
      input_x_reg_3_exponent <= io_in_input_x_3_exponent;
    end
    if (_T_478) begin
      input_x_reg_3_mantissa <= io_in_input_x_3_mantissa;
    end
    if (_T_482) begin
      input_x_reg_4_sign <= io_in_input_x_4_sign;
    end
    if (_T_482) begin
      input_x_reg_4_exponent <= io_in_input_x_4_exponent;
    end
    if (_T_482) begin
      input_x_reg_4_mantissa <= io_in_input_x_4_mantissa;
    end
    if (_T_486) begin
      input_x_reg_5_sign <= io_in_input_x_5_sign;
    end
    if (_T_486) begin
      input_x_reg_5_exponent <= io_in_input_x_5_exponent;
    end
    if (_T_486) begin
      input_x_reg_5_mantissa <= io_in_input_x_5_mantissa;
    end
    if (_T_490) begin
      input_x_reg_6_sign <= io_in_input_x_6_sign;
    end
    if (_T_490) begin
      input_x_reg_6_exponent <= io_in_input_x_6_exponent;
    end
    if (_T_490) begin
      input_x_reg_6_mantissa <= io_in_input_x_6_mantissa;
    end
    if (_T_494) begin
      input_x_reg_7_sign <= io_in_input_x_7_sign;
    end
    if (_T_494) begin
      input_x_reg_7_exponent <= io_in_input_x_7_exponent;
    end
    if (_T_494) begin
      input_x_reg_7_mantissa <= io_in_input_x_7_mantissa;
    end
    if (_T_498) begin
      input_x_reg_8_sign <= io_in_input_x_8_sign;
    end
    if (_T_498) begin
      input_x_reg_8_exponent <= io_in_input_x_8_exponent;
    end
    if (_T_498) begin
      input_x_reg_8_mantissa <= io_in_input_x_8_mantissa;
    end
    skip_1_reg <= io_in_skip;
    if (_T_1512) begin
      pp_reg_0_0 <= gen_pp_io_0_out_pp_1;
    end
    if (_T_1512) begin
      pp_reg_0_1 <= gen_pp_io_0_out_pp_1;
    end else begin
      pp_reg_0_1 <= pp_reg_0_0;
    end
    if (_T_1528) begin
      pp_reg_1_0 <= gen_pp_io_1_out_pp_1;
    end
    if (_T_1528) begin
      pp_reg_1_1 <= gen_pp_io_1_out_pp_1;
    end else begin
      pp_reg_1_1 <= pp_reg_1_0;
    end
    if (_T_1544) begin
      pp_reg_2_0 <= gen_pp_io_2_out_pp_1;
    end
    if (_T_1544) begin
      pp_reg_2_1 <= gen_pp_io_2_out_pp_1;
    end else begin
      pp_reg_2_1 <= pp_reg_2_0;
    end
    if (_T_1560) begin
      pp_reg_3_0 <= gen_pp_io_3_out_pp_1;
    end
    if (_T_1560) begin
      pp_reg_3_1 <= gen_pp_io_3_out_pp_1;
    end else begin
      pp_reg_3_1 <= pp_reg_3_0;
    end
    if (_T_1576) begin
      pp_reg_4_0 <= gen_pp_io_4_out_pp_1;
    end
    if (_T_1576) begin
      pp_reg_4_1 <= gen_pp_io_4_out_pp_1;
    end else begin
      pp_reg_4_1 <= pp_reg_4_0;
    end
    if (_T_1592) begin
      pp_reg_5_0 <= gen_pp_io_5_out_pp_1;
    end
    if (_T_1592) begin
      pp_reg_5_1 <= gen_pp_io_5_out_pp_1;
    end else begin
      pp_reg_5_1 <= pp_reg_5_0;
    end
    if (_T_1608) begin
      pp_reg_6_0 <= gen_pp_io_6_out_pp_1;
    end
    if (_T_1608) begin
      pp_reg_6_1 <= gen_pp_io_6_out_pp_1;
    end else begin
      pp_reg_6_1 <= pp_reg_6_0;
    end
    if (_T_1624) begin
      pp_reg_7_0 <= gen_pp_io_7_out_pp_1;
    end
    if (_T_1624) begin
      pp_reg_7_1 <= gen_pp_io_7_out_pp_1;
    end else begin
      pp_reg_7_1 <= pp_reg_7_0;
    end
    if (_T_1640) begin
      pp_reg_8_0 <= gen_pp_io_8_out_pp_1;
    end
    if (_T_1640) begin
      pp_reg_8_1 <= gen_pp_io_8_out_pp_1;
    end else begin
      pp_reg_8_1 <= pp_reg_8_0;
    end
    if (_T_1512) begin
      exp_reg_0 <= gen_pp_io_0_out_exponent;
    end
    if (_T_1528) begin
      exp_reg_1 <= gen_pp_io_1_out_exponent;
    end
    if (_T_1544) begin
      exp_reg_2 <= gen_pp_io_2_out_exponent;
    end
    if (_T_1560) begin
      exp_reg_3 <= gen_pp_io_3_out_exponent;
    end
    if (_T_1576) begin
      exp_reg_4 <= gen_pp_io_4_out_exponent;
    end
    if (_T_1592) begin
      exp_reg_5 <= gen_pp_io_5_out_exponent;
    end
    if (_T_1608) begin
      exp_reg_6 <= gen_pp_io_6_out_exponent;
    end
    if (_T_1624) begin
      exp_reg_7 <= gen_pp_io_7_out_exponent;
    end
    if (_T_1640) begin
      exp_reg_8 <= gen_pp_io_8_out_exponent;
    end
    if (_T_1512) begin
      max_exp_reg__0 <= max_exp;
    end
    if (_T_1528) begin
      max_exp_reg__1 <= max_exp;
    end
    if (_T_1544) begin
      max_exp_reg__2 <= max_exp;
    end
    if (_T_1560) begin
      max_exp_reg__3 <= max_exp;
    end
    if (_T_1576) begin
      max_exp_reg__4 <= max_exp;
    end
    if (_T_1592) begin
      max_exp_reg__5 <= max_exp;
    end
    if (_T_1608) begin
      max_exp_reg__6 <= max_exp;
    end
    if (_T_1624) begin
      max_exp_reg__7 <= max_exp;
    end
    if (_T_1640) begin
      max_exp_reg__8 <= max_exp;
    end
    skip_2_reg <= skip_1_reg;
    skip_3_reg <= skip_2_reg;
    max_exp_reg_2 <= max_exp_reg__0;
    if (_T_2264) begin
      align_pp_reg_0_0 <= align_pp_io_0_out_align_pp1;
    end
    if (_T_2264) begin
      align_pp_reg_0_1 <= align_pp_io_0_out_align_pp2;
    end
    if (_T_2272) begin
      align_pp_reg_1_0 <= align_pp_io_1_out_align_pp1;
    end
    if (_T_2272) begin
      align_pp_reg_1_1 <= align_pp_io_1_out_align_pp2;
    end
    if (_T_2280) begin
      align_pp_reg_2_0 <= align_pp_io_2_out_align_pp1;
    end
    if (_T_2280) begin
      align_pp_reg_2_1 <= align_pp_io_2_out_align_pp2;
    end
    if (_T_2288) begin
      align_pp_reg_3_0 <= align_pp_io_3_out_align_pp1;
    end
    if (_T_2288) begin
      align_pp_reg_3_1 <= align_pp_io_3_out_align_pp2;
    end
    if (_T_2296) begin
      align_pp_reg_4_0 <= align_pp_io_4_out_align_pp1;
    end
    if (_T_2296) begin
      align_pp_reg_4_1 <= align_pp_io_4_out_align_pp2;
    end
    if (_T_2304) begin
      align_pp_reg_5_0 <= align_pp_io_5_out_align_pp1;
    end
    if (_T_2304) begin
      align_pp_reg_5_1 <= align_pp_io_5_out_align_pp2;
    end
    if (_T_2312) begin
      align_pp_reg_6_0 <= align_pp_io_6_out_align_pp1;
    end
    if (_T_2312) begin
      align_pp_reg_6_1 <= align_pp_io_6_out_align_pp2;
    end
    if (_T_2320) begin
      align_pp_reg_7_0 <= align_pp_io_7_out_align_pp1;
    end
    if (_T_2320) begin
      align_pp_reg_7_1 <= align_pp_io_7_out_align_pp2;
    end
    if (_T_2328) begin
      align_pp_reg_8_0 <= align_pp_io_8_out_align_pp1;
    end
    if (_T_2328) begin
      align_pp_reg_8_1 <= align_pp_io_8_out_align_pp2;
    end
    skip_4_reg <= _T_2556 == 9'h0;
    if (_T_2563) begin
      out_reg <= out;
    end
    max_exp_reg_3 <= max_exp_reg_2;
    if (_T_2580) begin
      norm_sum_reg <= norm_sum;
    end
    if (_T_2580) begin
      exp_diff_reg <= exp_diff;
    end
    if (_T_2580) begin
      max_exp_reg_4 <= max_exp_reg_3;
    end
    if (_T_2580) begin
      sign_reg <= sign;
    end
    skip_5_reg <= skip_4_reg;
    if (_T_2601) begin
      mac_output_reg_sign <= sign_reg;
    end else begin
      mac_output_reg_sign <= 1'h0;
    end
    if (_T_2601) begin
      mac_output_reg_exponent <= _T_2610;
    end else begin
      mac_output_reg_exponent <= 8'h0;
    end
    if (_T_2601) begin
      mac_output_reg_mantissa <= norm_sum_reg;
    end else begin
      mac_output_reg_mantissa <= 23'h0;
    end
  end
endmodule
