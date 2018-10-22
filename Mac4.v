module Mac4( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_in_start, // @[:@6.4]
  input  [15:0] io_in_x_vec_0, // @[:@6.4]
  input  [15:0] io_in_x_vec_1, // @[:@6.4]
  input  [15:0] io_in_x_vec_2, // @[:@6.4]
  input  [15:0] io_in_x_vec_3, // @[:@6.4]
  input  [15:0] io_in_w_vec_0, // @[:@6.4]
  input  [15:0] io_in_w_vec_1, // @[:@6.4]
  input  [15:0] io_in_w_vec_2, // @[:@6.4]
  input  [15:0] io_in_w_vec_3, // @[:@6.4]
  output [15:0] io_out_y_vec_0, // @[:@6.4]
  output [15:0] io_out_y_vec_1, // @[:@6.4]
  output [15:0] io_out_y_vec_2, // @[:@6.4]
  output [15:0] io_out_y_vec_3, // @[:@6.4]
  output        io_out_done // @[:@6.4]
);
  reg [15:0] x_0; // @[mac4.scala 22:14:@8.4]
  reg [31:0] _RAND_0;
  reg [15:0] x_1; // @[mac4.scala 22:14:@8.4]
  reg [31:0] _RAND_1;
  reg [15:0] x_2; // @[mac4.scala 22:14:@8.4]
  reg [31:0] _RAND_2;
  reg [15:0] x_3; // @[mac4.scala 22:14:@8.4]
  reg [31:0] _RAND_3;
  reg [15:0] w_0; // @[mac4.scala 23:14:@9.4]
  reg [31:0] _RAND_4;
  reg [15:0] w_1; // @[mac4.scala 23:14:@9.4]
  reg [31:0] _RAND_5;
  reg [15:0] w_2; // @[mac4.scala 23:14:@9.4]
  reg [31:0] _RAND_6;
  reg [15:0] w_3; // @[mac4.scala 23:14:@9.4]
  reg [31:0] _RAND_7;
  reg [15:0] y_0; // @[mac4.scala 24:14:@10.4]
  reg [31:0] _RAND_8;
  reg [15:0] y_1; // @[mac4.scala 24:14:@10.4]
  reg [31:0] _RAND_9;
  reg [15:0] y_2; // @[mac4.scala 24:14:@10.4]
  reg [31:0] _RAND_10;
  reg [15:0] y_3; // @[mac4.scala 24:14:@10.4]
  reg [31:0] _RAND_11;
  reg [2:0] state; // @[mac4.scala 33:22:@21.4]
  reg [31:0] _RAND_12;
  wire  _T_154; // @[mac4.scala 35:25:@22.4]
  wire  _T_155; // @[mac4.scala 38:15:@28.4]
  wire [2:0] _GEN_8; // @[mac4.scala 39:24:@30.6]
  wire [2:0] _GEN_9; // @[mac4.scala 38:26:@29.4]
  wire  _T_156; // @[mac4.scala 43:15:@34.4]
  wire [31:0] _T_157; // @[mac4.scala 44:24:@36.6]
  wire [31:0] _GEN_30; // @[mac4.scala 44:18:@37.6]
  wire [32:0] _T_158; // @[mac4.scala 44:18:@37.6]
  wire [31:0] _T_159; // @[mac4.scala 44:18:@38.6]
  wire [31:0] _T_160; // @[mac4.scala 44:18:@39.6]
  wire [31:0] _T_161; // @[mac4.scala 45:24:@41.6]
  wire [31:0] _GEN_31; // @[mac4.scala 45:18:@42.6]
  wire [32:0] _T_162; // @[mac4.scala 45:18:@42.6]
  wire [31:0] _T_163; // @[mac4.scala 45:18:@43.6]
  wire [31:0] _T_164; // @[mac4.scala 45:18:@44.6]
  wire [31:0] _T_165; // @[mac4.scala 46:24:@46.6]
  wire [31:0] _GEN_32; // @[mac4.scala 46:18:@47.6]
  wire [32:0] _T_166; // @[mac4.scala 46:18:@47.6]
  wire [31:0] _T_167; // @[mac4.scala 46:18:@48.6]
  wire [31:0] _T_168; // @[mac4.scala 46:18:@49.6]
  wire [31:0] _T_169; // @[mac4.scala 47:24:@51.6]
  wire [31:0] _GEN_33; // @[mac4.scala 47:18:@52.6]
  wire [32:0] _T_170; // @[mac4.scala 47:18:@52.6]
  wire [31:0] _T_171; // @[mac4.scala 47:18:@53.6]
  wire [31:0] _T_172; // @[mac4.scala 47:18:@54.6]
  wire [31:0] _GEN_10; // @[mac4.scala 43:23:@35.4]
  wire [31:0] _GEN_11; // @[mac4.scala 43:23:@35.4]
  wire [31:0] _GEN_12; // @[mac4.scala 43:23:@35.4]
  wire [31:0] _GEN_13; // @[mac4.scala 43:23:@35.4]
  wire [2:0] _GEN_14; // @[mac4.scala 43:23:@35.4]
  wire  _T_173; // @[mac4.scala 50:15:@58.4]
  wire [31:0] _GEN_15; // @[mac4.scala 50:23:@59.4]
  wire [31:0] _GEN_16; // @[mac4.scala 50:23:@59.4]
  wire [31:0] _GEN_17; // @[mac4.scala 50:23:@59.4]
  wire [31:0] _GEN_18; // @[mac4.scala 50:23:@59.4]
  wire [2:0] _GEN_19; // @[mac4.scala 50:23:@59.4]
  wire  _T_190; // @[mac4.scala 57:15:@82.4]
  wire [31:0] _GEN_20; // @[mac4.scala 57:23:@83.4]
  wire [31:0] _GEN_21; // @[mac4.scala 57:23:@83.4]
  wire [31:0] _GEN_22; // @[mac4.scala 57:23:@83.4]
  wire [31:0] _GEN_23; // @[mac4.scala 57:23:@83.4]
  wire [2:0] _GEN_24; // @[mac4.scala 57:23:@83.4]
  wire [31:0] _GEN_25; // @[mac4.scala 64:23:@107.4]
  wire [31:0] _GEN_26; // @[mac4.scala 64:23:@107.4]
  wire [31:0] _GEN_27; // @[mac4.scala 64:23:@107.4]
  wire [31:0] _GEN_28; // @[mac4.scala 64:23:@107.4]
  wire [2:0] _GEN_29; // @[mac4.scala 64:23:@107.4]
  wire [15:0] _GEN_46; // @[mac4.scala 44:10:@40.6 mac4.scala 51:10:@64.6 mac4.scala 58:10:@88.6 mac4.scala 65:10:@112.6]
  wire [15:0] _GEN_47; // @[mac4.scala 45:10:@45.6 mac4.scala 52:10:@69.6 mac4.scala 59:10:@93.6 mac4.scala 66:10:@117.6]
  wire [15:0] _GEN_48; // @[mac4.scala 46:10:@50.6 mac4.scala 53:10:@74.6 mac4.scala 60:10:@98.6 mac4.scala 67:10:@122.6]
  wire [15:0] _GEN_49; // @[mac4.scala 47:10:@55.6 mac4.scala 54:10:@79.6 mac4.scala 61:10:@103.6 mac4.scala 68:10:@127.6]
  assign _T_154 = state == 3'h4; // @[mac4.scala 35:25:@22.4]
  assign _T_155 = state == 3'h0; // @[mac4.scala 38:15:@28.4]
  assign _GEN_8 = io_in_start ? 3'h1 : state; // @[mac4.scala 39:24:@30.6]
  assign _GEN_9 = _T_155 ? _GEN_8 : state; // @[mac4.scala 38:26:@29.4]
  assign _T_156 = state == 3'h1; // @[mac4.scala 43:15:@34.4]
  assign _T_157 = $signed(x_0) * $signed(w_0); // @[mac4.scala 44:24:@36.6]
  assign _GEN_30 = {{16{y_0[15]}},y_0}; // @[mac4.scala 44:18:@37.6]
  assign _T_158 = $signed(_GEN_30) + $signed(_T_157); // @[mac4.scala 44:18:@37.6]
  assign _T_159 = _T_158[31:0]; // @[mac4.scala 44:18:@38.6]
  assign _T_160 = $signed(_T_159); // @[mac4.scala 44:18:@39.6]
  assign _T_161 = $signed(x_1) * $signed(w_1); // @[mac4.scala 45:24:@41.6]
  assign _GEN_31 = {{16{y_1[15]}},y_1}; // @[mac4.scala 45:18:@42.6]
  assign _T_162 = $signed(_GEN_31) + $signed(_T_161); // @[mac4.scala 45:18:@42.6]
  assign _T_163 = _T_162[31:0]; // @[mac4.scala 45:18:@43.6]
  assign _T_164 = $signed(_T_163); // @[mac4.scala 45:18:@44.6]
  assign _T_165 = $signed(x_2) * $signed(w_2); // @[mac4.scala 46:24:@46.6]
  assign _GEN_32 = {{16{y_2[15]}},y_2}; // @[mac4.scala 46:18:@47.6]
  assign _T_166 = $signed(_GEN_32) + $signed(_T_165); // @[mac4.scala 46:18:@47.6]
  assign _T_167 = _T_166[31:0]; // @[mac4.scala 46:18:@48.6]
  assign _T_168 = $signed(_T_167); // @[mac4.scala 46:18:@49.6]
  assign _T_169 = $signed(x_3) * $signed(w_3); // @[mac4.scala 47:24:@51.6]
  assign _GEN_33 = {{16{y_3[15]}},y_3}; // @[mac4.scala 47:18:@52.6]
  assign _T_170 = $signed(_GEN_33) + $signed(_T_169); // @[mac4.scala 47:18:@52.6]
  assign _T_171 = _T_170[31:0]; // @[mac4.scala 47:18:@53.6]
  assign _T_172 = $signed(_T_171); // @[mac4.scala 47:18:@54.6]
  assign _GEN_10 = _T_156 ? $signed(_T_160) : $signed({{16{y_0[15]}},y_0}); // @[mac4.scala 43:23:@35.4]
  assign _GEN_11 = _T_156 ? $signed(_T_164) : $signed({{16{y_1[15]}},y_1}); // @[mac4.scala 43:23:@35.4]
  assign _GEN_12 = _T_156 ? $signed(_T_168) : $signed({{16{y_2[15]}},y_2}); // @[mac4.scala 43:23:@35.4]
  assign _GEN_13 = _T_156 ? $signed(_T_172) : $signed({{16{y_3[15]}},y_3}); // @[mac4.scala 43:23:@35.4]
  assign _GEN_14 = _T_156 ? 3'h2 : _GEN_9; // @[mac4.scala 43:23:@35.4]
  assign _T_173 = state == 3'h2; // @[mac4.scala 50:15:@58.4]
  assign _GEN_15 = _T_173 ? $signed(_T_160) : $signed(_GEN_10); // @[mac4.scala 50:23:@59.4]
  assign _GEN_16 = _T_173 ? $signed(_T_164) : $signed(_GEN_11); // @[mac4.scala 50:23:@59.4]
  assign _GEN_17 = _T_173 ? $signed(_T_168) : $signed(_GEN_12); // @[mac4.scala 50:23:@59.4]
  assign _GEN_18 = _T_173 ? $signed(_T_172) : $signed(_GEN_13); // @[mac4.scala 50:23:@59.4]
  assign _GEN_19 = _T_173 ? 3'h3 : _GEN_14; // @[mac4.scala 50:23:@59.4]
  assign _T_190 = state == 3'h3; // @[mac4.scala 57:15:@82.4]
  assign _GEN_20 = _T_190 ? $signed(_T_160) : $signed(_GEN_15); // @[mac4.scala 57:23:@83.4]
  assign _GEN_21 = _T_190 ? $signed(_T_164) : $signed(_GEN_16); // @[mac4.scala 57:23:@83.4]
  assign _GEN_22 = _T_190 ? $signed(_T_168) : $signed(_GEN_17); // @[mac4.scala 57:23:@83.4]
  assign _GEN_23 = _T_190 ? $signed(_T_172) : $signed(_GEN_18); // @[mac4.scala 57:23:@83.4]
  assign _GEN_24 = _T_190 ? 3'h4 : _GEN_19; // @[mac4.scala 57:23:@83.4]
  assign _GEN_25 = _T_154 ? $signed(_T_160) : $signed(_GEN_20); // @[mac4.scala 64:23:@107.4]
  assign _GEN_26 = _T_154 ? $signed(_T_164) : $signed(_GEN_21); // @[mac4.scala 64:23:@107.4]
  assign _GEN_27 = _T_154 ? $signed(_T_168) : $signed(_GEN_22); // @[mac4.scala 64:23:@107.4]
  assign _GEN_28 = _T_154 ? $signed(_T_172) : $signed(_GEN_23); // @[mac4.scala 64:23:@107.4]
  assign _GEN_29 = _T_154 ? 3'h0 : _GEN_24; // @[mac4.scala 64:23:@107.4]
  assign io_out_y_vec_0 = y_0; // @[mac4.scala 36:16:@24.4]
  assign io_out_y_vec_1 = y_1; // @[mac4.scala 36:16:@25.4]
  assign io_out_y_vec_2 = y_2; // @[mac4.scala 36:16:@26.4]
  assign io_out_y_vec_3 = y_3; // @[mac4.scala 36:16:@27.4]
  assign io_out_done = state == 3'h4; // @[mac4.scala 35:15:@23.4]
  assign _GEN_46 = _GEN_25[15:0]; // @[mac4.scala 44:10:@40.6 mac4.scala 51:10:@64.6 mac4.scala 58:10:@88.6 mac4.scala 65:10:@112.6]
  assign _GEN_47 = _GEN_26[15:0]; // @[mac4.scala 45:10:@45.6 mac4.scala 52:10:@69.6 mac4.scala 59:10:@93.6 mac4.scala 66:10:@117.6]
  assign _GEN_48 = _GEN_27[15:0]; // @[mac4.scala 46:10:@50.6 mac4.scala 53:10:@74.6 mac4.scala 60:10:@98.6 mac4.scala 67:10:@122.6]
  assign _GEN_49 = _GEN_28[15:0]; // @[mac4.scala 47:10:@55.6 mac4.scala 54:10:@79.6 mac4.scala 61:10:@103.6 mac4.scala 68:10:@127.6]
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
  x_0 = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  x_1 = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  x_2 = _RAND_2[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  x_3 = _RAND_3[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  w_0 = _RAND_4[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  w_1 = _RAND_5[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  w_2 = _RAND_6[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  w_3 = _RAND_7[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  y_0 = _RAND_8[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  y_1 = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  y_2 = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  y_3 = _RAND_11[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  state = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (io_in_start) begin
      x_0 <= io_in_x_vec_0;
    end
    if (io_in_start) begin
      x_1 <= io_in_x_vec_1;
    end
    if (io_in_start) begin
      x_2 <= io_in_x_vec_2;
    end
    if (io_in_start) begin
      x_3 <= io_in_x_vec_3;
    end
    if (io_in_start) begin
      w_0 <= io_in_w_vec_0;
    end
    if (io_in_start) begin
      w_1 <= io_in_w_vec_1;
    end
    if (io_in_start) begin
      w_2 <= io_in_w_vec_2;
    end
    if (io_in_start) begin
      w_3 <= io_in_w_vec_3;
    end
    y_0 <= $signed(_GEN_46);
    y_1 <= $signed(_GEN_47);
    y_2 <= $signed(_GEN_48);
    y_3 <= $signed(_GEN_49);
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_154) begin
        state <= 3'h0;
      end else begin
        if (_T_190) begin
          state <= 3'h4;
        end else begin
          if (_T_173) begin
            state <= 3'h3;
          end else begin
            if (_T_156) begin
              state <= 3'h2;
            end else begin
              if (_T_155) begin
                if (io_in_start) begin
                  state <= 3'h1;
                end
              end
            end
          end
        end
      end
    end
  end
endmodule
