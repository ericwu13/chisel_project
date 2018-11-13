package max_exp_determ
import chisel3._
import chisel3.util._
//import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class MaxExpInput(val exp_width: Int) extends Bundle {
    val skip = Input(UInt(9.W))
    val exp = Input(Vec(9, UInt((exp_width+1).W)))
}
class MaxExpOutput(val exp_width: Int) extends Bundle {
    val max_exp = Output(UInt((exp_width + 1).W))
    val debug = Output(UInt((exp_width + 1).W))
}

class Max_exp_determ(val exp_width: Int) extends Module{
    val io = IO(new Bundle{
        val in = new MaxExpInput(exp_width)
        val out = new MaxExpOutput(exp_width)
    })
    val exp_tmp = Wire(Vec(9, UInt((exp_width + 1).W)))

    val wire1_1 = Wire(UInt((exp_width + 1).W))
    val wire1_2 = Wire(UInt((exp_width + 1).W))
    val wire1_3 = Wire(UInt((exp_width + 1).W))
    val wire1_4 = Wire(UInt((exp_width + 1).W))
    val wire2_1 = Wire(UInt((exp_width + 1).W))
    val wire2_2 = Wire(UInt((exp_width + 1).W))
    val wire3_1 = Wire(UInt((exp_width + 1).W))

    for(i <- 0 until 9) {
        exp_tmp(i) := Mux(io.in.skip(8-i), 0.U(9.W), io.in.exp(i))
    }


    wire1_1 := Mux(exp_tmp(0)>exp_tmp(1), exp_tmp(0), exp_tmp(1))
    wire1_2 := Mux(exp_tmp(2)>exp_tmp(3), exp_tmp(2), exp_tmp(3))
    wire1_3 := Mux(exp_tmp(4)>exp_tmp(5), exp_tmp(4), exp_tmp(5))
    wire1_4 := Mux(exp_tmp(6)>exp_tmp(7), exp_tmp(6), exp_tmp(7))
    wire2_1 := Mux(wire1_1>wire1_2, wire1_1, wire1_2)
    wire2_2 := Mux(wire1_3>wire1_4, wire1_3, wire1_4)
    wire3_1 := Mux(wire2_1>wire2_2, wire2_1, wire2_2)
    io.out.max_exp := Mux(wire3_1>exp_tmp(8), wire3_1, exp_tmp(8))
    io.out.debug:= wire1_1
}