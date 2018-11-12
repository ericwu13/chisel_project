import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}
class Max_exp_determ(sig_width: Int, exp_width: Int, grp_size: Int) extends Module{
    val io = IO(new Bundle{
        val skip = Input(UInt(9.W))
        val exp1 = Input(UInt((exp_width + 1).W))
        val exp2 = Input(UInt((exp_width + 1).W))
        val exp3 = Input(UInt((exp_width + 1).W))
        val exp4 = Input(UInt((exp_width + 1).W))
        val exp5 = Input(UInt((exp_width + 1).W))
        val exp6 = Input(UInt((exp_width + 1).W))
        val exp7 = Input(UInt((exp_width + 1).W))
        val exp8 = Input(UInt((exp_width + 1).W))
        val exp9 = Input(UInt((exp_width + 1).W))
        val max_exp = Output(UInt((exp_width + 1).W))
        val debug = Output(UInt((exp_width + 1).W))
    })
    val exp1_tmp = Wire(UInt((exp_width + 1).W))
    val exp2_tmp = Wire(UInt((exp_width + 1).W))
    val exp3_tmp = Wire(UInt((exp_width + 1).W))
    val exp4_tmp = Wire(UInt((exp_width + 1).W))
    val exp5_tmp = Wire(UInt((exp_width + 1).W))
    val exp6_tmp = Wire(UInt((exp_width + 1).W))
    val exp7_tmp = Wire(UInt((exp_width + 1).W))
    val exp8_tmp = Wire(UInt((exp_width + 1).W))
    val exp9_tmp = Wire(UInt((exp_width + 1).W))

    val wire1_1 = Wire(UInt((exp_width + 1).W))
    val wire1_2 = Wire(UInt((exp_width + 1).W))
    val wire1_3 = Wire(UInt((exp_width + 1).W))
    val wire1_4 = Wire(UInt((exp_width + 1).W))
    val wire2_1 = Wire(UInt((exp_width + 1).W))
    val wire2_2 = Wire(UInt((exp_width + 1).W))
    val wire3_1 = Wire(UInt((exp_width + 1).W))

    exp1_tmp := Mux(io.skip(8), 0.U(9.W), io.exp1)
    exp2_tmp := Mux(io.skip(7), 0.U(9.W), io.exp2)
    exp3_tmp := Mux(io.skip(6), 0.U(9.W), io.exp3)
    exp4_tmp := Mux(io.skip(5), 0.U(9.W), io.exp4)
    exp5_tmp := Mux(io.skip(4), 0.U(9.W), io.exp5)
    exp6_tmp := Mux(io.skip(3), 0.U(9.W), io.exp6)
    exp7_tmp := Mux(io.skip(2), 0.U(9.W), io.exp7)
    exp8_tmp := Mux(io.skip(1), 0.U(9.W), io.exp8)
    exp9_tmp := Mux(io.skip(0), 0.U(9.W), io.exp9)


    wire1_1 := Mux(exp1_tmp>exp2_tmp, exp1_tmp, exp2_tmp)
    wire1_2 := Mux(exp3_tmp>exp4_tmp, exp3_tmp, exp4_tmp)
    wire1_3 := Mux(exp5_tmp>exp6_tmp, exp5_tmp, exp6_tmp)
    wire1_4 := Mux(exp7_tmp>exp8_tmp, exp7_tmp, exp8_tmp)
    wire2_1 := Mux(wire1_1>wire1_2, wire1_1, wire1_2)
    wire2_2 := Mux(wire1_3>wire1_4, wire1_3, wire1_4)
    wire3_1 := Mux(wire2_1>wire2_2, wire2_1, wire2_2)
    io.max_exp := Mux(wire3_1>exp9_tmp, wire3_1, exp9_tmp)
    io.skip := wire1_1
     


}