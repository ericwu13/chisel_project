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
  reg [15:0] x_0; // @[Mac4.scala 24:14:@8.4]
  reg [31:0] _RAND_0;
  reg [15:0] x_1; // @[Mac4.scala 24:14:@8.4]
  reg [31:0] _RAND_1;
  reg [15:0] x_2; // @[Mac4.scala 24:14:@8.4]
  reg [31:0] _RAND_2;
  reg [15:0] x_3; // @[Mac4.scala 24:14:@8.4]
  reg [31:0] _RAND_3;
  reg [15:0] w_0; // @[Mac4.scala 25:14:@9.4]
  reg [31:0] _RAND_4;
  reg [15:0] w_1; // @[Mac4.scala 25:14:@9.4]
  reg [31:0] _RAND_5;
  reg [15:0] w_2; // @[Mac4.scala 25:14:@9.4]
  reg [31:0] _RAND_6;
  reg [15:0] w_3; // @[Mac4.scala 25:14:@9.4]
  reg [31:0] _RAND_7;
  reg  done; // @[Mac4.scala 26:21:@10.4]
  reg [31:0] _RAND_8;
  reg [15:0] y_0; // @[Mac4.scala 27:18:@16.4]
  reg [31:0] _RAND_9;
  reg [15:0] y_1; // @[Mac4.scala 27:18:@16.4]
  reg [31:0] _RAND_10;
  reg [15:0] y_2; // @[Mac4.scala 27:18:@16.4]
  reg [31:0] _RAND_11;
  reg [15:0] y_3; // @[Mac4.scala 27:18:@16.4]
  reg [31:0] _RAND_12;
  reg [2:0] state; // @[Mac4.scala 30:22:@17.4]
  reg [31:0] _RAND_13;
  wire [15:0] _GEN_4; // @[Mac4.scala 32:21:@18.4]
  wire [15:0] _GEN_5; // @[Mac4.scala 32:21:@18.4]
  wire [15:0] _GEN_6; // @[Mac4.scala 32:21:@18.4]
  wire [15:0] _GEN_7; // @[Mac4.scala 32:21:@18.4]
  wire [2:0] _GEN_8; // @[Mac4.scala 32:21:@18.4]
  wire  _T_188; // @[Mac4.scala 42:17:@34.4]
  wire  _GEN_9; // @[Mac4.scala 42:28:@35.4]
  wire  _T_190; // @[Mac4.scala 45:17:@38.4]
  wire [31:0] _T_191; // @[Mac4.scala 46:26:@40.6]
  wire [31:0] _GEN_47; // @[Mac4.scala 46:20:@41.6]
  wire [32:0] _T_192; // @[Mac4.scala 46:20:@41.6]
  wire [31:0] _T_193; // @[Mac4.scala 46:20:@42.6]
  wire [31:0] _T_194; // @[Mac4.scala 47:26:@44.6]
  wire [31:0] _GEN_48; // @[Mac4.scala 47:20:@45.6]
  wire [32:0] _T_195; // @[Mac4.scala 47:20:@45.6]
  wire [31:0] _T_196; // @[Mac4.scala 47:20:@46.6]
  wire [31:0] _T_197; // @[Mac4.scala 48:26:@48.6]
  wire [31:0] _GEN_49; // @[Mac4.scala 48:20:@49.6]
  wire [32:0] _T_198; // @[Mac4.scala 48:20:@49.6]
  wire [31:0] _T_199; // @[Mac4.scala 48:20:@50.6]
  wire [31:0] _T_200; // @[Mac4.scala 49:26:@52.6]
  wire [31:0] _GEN_50; // @[Mac4.scala 49:20:@53.6]
  wire [32:0] _T_201; // @[Mac4.scala 49:20:@53.6]
  wire [31:0] _T_202; // @[Mac4.scala 49:20:@54.6]
  wire [31:0] _GEN_10; // @[Mac4.scala 45:25:@39.4]
  wire [31:0] _GEN_11; // @[Mac4.scala 45:25:@39.4]
  wire [31:0] _GEN_12; // @[Mac4.scala 45:25:@39.4]
  wire [31:0] _GEN_13; // @[Mac4.scala 45:25:@39.4]
  wire [15:0] _GEN_14; // @[Mac4.scala 45:25:@39.4]
  wire [15:0] _GEN_15; // @[Mac4.scala 45:25:@39.4]
  wire [15:0] _GEN_16; // @[Mac4.scala 45:25:@39.4]
  wire [15:0] _GEN_17; // @[Mac4.scala 45:25:@39.4]
  wire [2:0] _GEN_18; // @[Mac4.scala 45:25:@39.4]
  wire  _T_203; // @[Mac4.scala 53:17:@62.4]
  wire [31:0] _GEN_19; // @[Mac4.scala 53:25:@63.4]
  wire [31:0] _GEN_20; // @[Mac4.scala 53:25:@63.4]
  wire [31:0] _GEN_21; // @[Mac4.scala 53:25:@63.4]
  wire [31:0] _GEN_22; // @[Mac4.scala 53:25:@63.4]
  wire [15:0] _GEN_23; // @[Mac4.scala 53:25:@63.4]
  wire [15:0] _GEN_24; // @[Mac4.scala 53:25:@63.4]
  wire [15:0] _GEN_25; // @[Mac4.scala 53:25:@63.4]
  wire [15:0] _GEN_26; // @[Mac4.scala 53:25:@63.4]
  wire [2:0] _GEN_27; // @[Mac4.scala 53:25:@63.4]
  wire  _T_216; // @[Mac4.scala 61:17:@86.4]
  wire [31:0] _GEN_28; // @[Mac4.scala 61:25:@87.4]
  wire [31:0] _GEN_29; // @[Mac4.scala 61:25:@87.4]
  wire [31:0] _GEN_30; // @[Mac4.scala 61:25:@87.4]
  wire [31:0] _GEN_31; // @[Mac4.scala 61:25:@87.4]
  wire [15:0] _GEN_32; // @[Mac4.scala 61:25:@87.4]
  wire [15:0] _GEN_33; // @[Mac4.scala 61:25:@87.4]
  wire [15:0] _GEN_34; // @[Mac4.scala 61:25:@87.4]
  wire [15:0] _GEN_35; // @[Mac4.scala 61:25:@87.4]
  wire [2:0] _GEN_36; // @[Mac4.scala 61:25:@87.4]
  wire  _T_229; // @[Mac4.scala 69:17:@110.4]
  wire [31:0] _GEN_37; // @[Mac4.scala 69:25:@111.4]
  wire [31:0] _GEN_38; // @[Mac4.scala 69:25:@111.4]
  wire [31:0] _GEN_39; // @[Mac4.scala 69:25:@111.4]
  wire [31:0] _GEN_40; // @[Mac4.scala 69:25:@111.4]
  wire [2:0] _GEN_45; // @[Mac4.scala 69:25:@111.4]
  wire  _GEN_46; // @[Mac4.scala 69:25:@111.4]
  assign _GEN_4 = io_in_start ? io_in_w_vec_0 : w_0; // @[Mac4.scala 32:21:@18.4]
  assign _GEN_5 = io_in_start ? io_in_w_vec_1 : w_1; // @[Mac4.scala 32:21:@18.4]
  assign _GEN_6 = io_in_start ? io_in_w_vec_2 : w_2; // @[Mac4.scala 32:21:@18.4]
  assign _GEN_7 = io_in_start ? io_in_w_vec_3 : w_3; // @[Mac4.scala 32:21:@18.4]
  assign _GEN_8 = io_in_start ? 3'h1 : state; // @[Mac4.scala 32:21:@18.4]
  assign _T_188 = state == 3'h0; // @[Mac4.scala 42:17:@34.4]
  assign _GEN_9 = _T_188 ? 1'h0 : done; // @[Mac4.scala 42:28:@35.4]
  assign _T_190 = state == 3'h1; // @[Mac4.scala 45:17:@38.4]
  assign _T_191 = x_0 * w_0; // @[Mac4.scala 46:26:@40.6]
  assign _GEN_47 = {{16'd0}, y_0}; // @[Mac4.scala 46:20:@41.6]
  assign _T_192 = _GEN_47 + _T_191; // @[Mac4.scala 46:20:@41.6]
  assign _T_193 = _T_192[31:0]; // @[Mac4.scala 46:20:@42.6]
  assign _T_194 = x_1 * w_1; // @[Mac4.scala 47:26:@44.6]
  assign _GEN_48 = {{16'd0}, y_1}; // @[Mac4.scala 47:20:@45.6]
  assign _T_195 = _GEN_48 + _T_194; // @[Mac4.scala 47:20:@45.6]
  assign _T_196 = _T_195[31:0]; // @[Mac4.scala 47:20:@46.6]
  assign _T_197 = x_2 * w_2; // @[Mac4.scala 48:26:@48.6]
  assign _GEN_49 = {{16'd0}, y_2}; // @[Mac4.scala 48:20:@49.6]
  assign _T_198 = _GEN_49 + _T_197; // @[Mac4.scala 48:20:@49.6]
  assign _T_199 = _T_198[31:0]; // @[Mac4.scala 48:20:@50.6]
  assign _T_200 = x_3 * w_3; // @[Mac4.scala 49:26:@52.6]
  assign _GEN_50 = {{16'd0}, y_3}; // @[Mac4.scala 49:20:@53.6]
  assign _T_201 = _GEN_50 + _T_200; // @[Mac4.scala 49:20:@53.6]
  assign _T_202 = _T_201[31:0]; // @[Mac4.scala 49:20:@54.6]
  assign _GEN_10 = _T_190 ? _T_193 : {{16'd0}, y_0}; // @[Mac4.scala 45:25:@39.4]
  assign _GEN_11 = _T_190 ? _T_196 : {{16'd0}, y_1}; // @[Mac4.scala 45:25:@39.4]
  assign _GEN_12 = _T_190 ? _T_199 : {{16'd0}, y_2}; // @[Mac4.scala 45:25:@39.4]
  assign _GEN_13 = _T_190 ? _T_202 : {{16'd0}, y_3}; // @[Mac4.scala 45:25:@39.4]
  assign _GEN_14 = _T_190 ? io_in_w_vec_0 : _GEN_4; // @[Mac4.scala 45:25:@39.4]
  assign _GEN_15 = _T_190 ? io_in_w_vec_1 : _GEN_5; // @[Mac4.scala 45:25:@39.4]
  assign _GEN_16 = _T_190 ? io_in_w_vec_2 : _GEN_6; // @[Mac4.scala 45:25:@39.4]
  assign _GEN_17 = _T_190 ? io_in_w_vec_3 : _GEN_7; // @[Mac4.scala 45:25:@39.4]
  assign _GEN_18 = _T_190 ? 3'h2 : _GEN_8; // @[Mac4.scala 45:25:@39.4]
  assign _T_203 = state == 3'h2; // @[Mac4.scala 53:17:@62.4]
  assign _GEN_19 = _T_203 ? _T_193 : _GEN_10; // @[Mac4.scala 53:25:@63.4]
  assign _GEN_20 = _T_203 ? _T_196 : _GEN_11; // @[Mac4.scala 53:25:@63.4]
  assign _GEN_21 = _T_203 ? _T_199 : _GEN_12; // @[Mac4.scala 53:25:@63.4]
  assign _GEN_22 = _T_203 ? _T_202 : _GEN_13; // @[Mac4.scala 53:25:@63.4]
  assign _GEN_23 = _T_203 ? io_in_w_vec_0 : _GEN_14; // @[Mac4.scala 53:25:@63.4]
  assign _GEN_24 = _T_203 ? io_in_w_vec_1 : _GEN_15; // @[Mac4.scala 53:25:@63.4]
  assign _GEN_25 = _T_203 ? io_in_w_vec_2 : _GEN_16; // @[Mac4.scala 53:25:@63.4]
  assign _GEN_26 = _T_203 ? io_in_w_vec_3 : _GEN_17; // @[Mac4.scala 53:25:@63.4]
  assign _GEN_27 = _T_203 ? 3'h3 : _GEN_18; // @[Mac4.scala 53:25:@63.4]
  assign _T_216 = state == 3'h3; // @[Mac4.scala 61:17:@86.4]
  assign _GEN_28 = _T_216 ? _T_193 : _GEN_19; // @[Mac4.scala 61:25:@87.4]
  assign _GEN_29 = _T_216 ? _T_196 : _GEN_20; // @[Mac4.scala 61:25:@87.4]
  assign _GEN_30 = _T_216 ? _T_199 : _GEN_21; // @[Mac4.scala 61:25:@87.4]
  assign _GEN_31 = _T_216 ? _T_202 : _GEN_22; // @[Mac4.scala 61:25:@87.4]
  assign _GEN_32 = _T_216 ? io_in_w_vec_0 : _GEN_23; // @[Mac4.scala 61:25:@87.4]
  assign _GEN_33 = _T_216 ? io_in_w_vec_1 : _GEN_24; // @[Mac4.scala 61:25:@87.4]
  assign _GEN_34 = _T_216 ? io_in_w_vec_2 : _GEN_25; // @[Mac4.scala 61:25:@87.4]
  assign _GEN_35 = _T_216 ? io_in_w_vec_3 : _GEN_26; // @[Mac4.scala 61:25:@87.4]
  assign _GEN_36 = _T_216 ? 3'h4 : _GEN_27; // @[Mac4.scala 61:25:@87.4]
  assign _T_229 = state == 3'h4; // @[Mac4.scala 69:17:@110.4]
  assign _GEN_37 = _T_229 ? _T_193 : _GEN_28; // @[Mac4.scala 69:25:@111.4]
  assign _GEN_38 = _T_229 ? _T_196 : _GEN_29; // @[Mac4.scala 69:25:@111.4]
  assign _GEN_39 = _T_229 ? _T_199 : _GEN_30; // @[Mac4.scala 69:25:@111.4]
  assign _GEN_40 = _T_229 ? _T_202 : _GEN_31; // @[Mac4.scala 69:25:@111.4]
  assign _GEN_45 = _T_229 ? 3'h0 : _GEN_36; // @[Mac4.scala 69:25:@111.4]
  assign _GEN_46 = _T_229 ? 1'h1 : _GEN_9; // @[Mac4.scala 69:25:@111.4]
  assign io_out_y_vec_0 = y_0; // @[Mac4.scala 38:16:@29.4]
  assign io_out_y_vec_1 = y_1; // @[Mac4.scala 38:16:@30.4]
  assign io_out_y_vec_2 = y_2; // @[Mac4.scala 38:16:@31.4]
  assign io_out_y_vec_3 = y_3; // @[Mac4.scala 38:16:@32.4]
  assign io_out_done = done; // @[Mac4.scala 39:15:@33.4]
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
  done = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  y_0 = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  y_1 = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  y_2 = _RAND_11[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  y_3 = _RAND_12[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  state = _RAND_13[2:0];
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
    if (_T_229) begin
      w_0 <= io_in_w_vec_0;
    end else begin
      if (_T_216) begin
        w_0 <= io_in_w_vec_0;
      end else begin
        if (_T_203) begin
          w_0 <= io_in_w_vec_0;
        end else begin
          if (_T_190) begin
            w_0 <= io_in_w_vec_0;
          end else begin
            if (io_in_start) begin
              w_0 <= io_in_w_vec_0;
            end
          end
        end
      end
    end
    if (_T_229) begin
      w_1 <= io_in_w_vec_1;
    end else begin
      if (_T_216) begin
        w_1 <= io_in_w_vec_1;
      end else begin
        if (_T_203) begin
          w_1 <= io_in_w_vec_1;
        end else begin
          if (_T_190) begin
            w_1 <= io_in_w_vec_1;
          end else begin
            if (io_in_start) begin
              w_1 <= io_in_w_vec_1;
            end
          end
        end
      end
    end
    if (_T_229) begin
      w_2 <= io_in_w_vec_2;
    end else begin
      if (_T_216) begin
        w_2 <= io_in_w_vec_2;
      end else begin
        if (_T_203) begin
          w_2 <= io_in_w_vec_2;
        end else begin
          if (_T_190) begin
            w_2 <= io_in_w_vec_2;
          end else begin
            if (io_in_start) begin
              w_2 <= io_in_w_vec_2;
            end
          end
        end
      end
    end
    if (_T_229) begin
      w_3 <= io_in_w_vec_3;
    end else begin
      if (_T_216) begin
        w_3 <= io_in_w_vec_3;
      end else begin
        if (_T_203) begin
          w_3 <= io_in_w_vec_3;
        end else begin
          if (_T_190) begin
            w_3 <= io_in_w_vec_3;
          end else begin
            if (io_in_start) begin
              w_3 <= io_in_w_vec_3;
            end
          end
        end
      end
    end
    if (reset) begin
      done <= 1'h0;
    end else begin
      if (_T_229) begin
        done <= 1'h1;
      end else begin
        if (_T_188) begin
          done <= 1'h0;
        end
      end
    end
    if (reset) begin
      y_0 <= 16'h0;
    end else begin
      y_0 <= _GEN_37[15:0];
    end
    if (reset) begin
      y_1 <= 16'h0;
    end else begin
      y_1 <= _GEN_38[15:0];
    end
    if (reset) begin
      y_2 <= 16'h0;
    end else begin
      y_2 <= _GEN_39[15:0];
    end
    if (reset) begin
      y_3 <= 16'h0;
    end else begin
      y_3 <= _GEN_40[15:0];
    end
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_229) begin
        state <= 3'h0;
      end else begin
        if (_T_216) begin
          state <= 3'h4;
        end else begin
          if (_T_203) begin
            state <= 3'h3;
          end else begin
            if (_T_190) begin
              state <= 3'h2;
            end else begin
              if (io_in_start) begin
                state <= 3'h1;
              end
            end
          end
        end
      end
    end
  end
endmodule
