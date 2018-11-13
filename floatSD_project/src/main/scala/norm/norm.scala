package norm
import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}
class final_norm_noSUB(val width: Int, val output_width: Int) extends Module {
    val io = IO(new Bundle {
            val input_exp = Input(UInt(9.W))
            val PP_sum = Input(UInt((width+1).W))
            val norm_sum = Output(UInt((output_width).W))
            val norm_exp = Output(UInt(8.W))
            val sign = Output(UInt(1.W))
    })

	val POS_or_NEG = Wire(UInt(1.W))
    POS_or_NEG := Mux(io.PP_sum(26+1), 1.U, 0.U)
    io.sign := POS_or_NEG

    val unsign_sum = Wire(UInt((width+1).W))
    unsign_sum := Mux(POS_or_NEG === 0.U ,  io.PP_sum ,~io.PP_sum + 1.U)
    val leading_vector = Wire(Vec(27, UInt(1.W)))
    //val exp_diff = Wire(UInt(8.W))
    
    leading_vector(26) := Mux((unsign_sum(27).orR)  === 0.U & unsign_sum(26) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(25) := Mux(unsign_sum(27, 26).orR === 0.U & unsign_sum(25) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(24) := Mux(unsign_sum(27, 25).orR === 0.U & unsign_sum(24) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(23) := Mux(unsign_sum(27, 24).orR=== 0.U & unsign_sum(23) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(22) := Mux(unsign_sum(27, 23).orR=== 0.U & unsign_sum(22) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(21) := Mux(unsign_sum(27, 22).orR=== 0.U & unsign_sum(21) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(20) := Mux(unsign_sum(27, 21).orR === 0.U & unsign_sum(20) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(19) := Mux(unsign_sum(27, 20).orR === 0.U & unsign_sum(19) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(18) := Mux(unsign_sum(27, 19).orR === 0.U & unsign_sum(18) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(17) := Mux(unsign_sum(27, 18).orR === 0.U & unsign_sum(17) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(16) := Mux(unsign_sum(27, 17).orR === 0.U & unsign_sum(16) === 1.U , 1.U(1.W), 0.U(1.W))

    leading_vector(15) := Mux(unsign_sum(27, 16).orR === 0.U & unsign_sum(15) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(14) := Mux(unsign_sum(27, 15).orR === 0.U & unsign_sum(14) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(13) := Mux(unsign_sum(27, 14).orR === 0.U & unsign_sum(13) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(12) := Mux(unsign_sum(27, 13).orR === 0.U & unsign_sum(12) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(11) := Mux(unsign_sum(27, 12).orR === 0.U & unsign_sum(11) === 1.U , 1.U(1.W), 0.U(1.W))

    leading_vector(10) := Mux(unsign_sum(27, 11).orR === 0.U & unsign_sum(10) === 1.U ,1.U(1.W), 0.U(1.W))
    leading_vector(9) := Mux(unsign_sum(27, 10).orR === 0.U & unsign_sum(9) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(8) := Mux(unsign_sum(27, 9).orR === 0.U & unsign_sum(8) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(7) := Mux(unsign_sum(27, 8).orR === 0.U & unsign_sum(7) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(6) := Mux(unsign_sum(27, 7).orR === 0.U & unsign_sum(6) === 1.U , 1.U(1.W), 0.U(1.W))

    leading_vector(5) := Mux(unsign_sum(27, 6).orR === 0.U & unsign_sum(5) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(4) := Mux(unsign_sum(27, 5).orR === 0.U & unsign_sum(4) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(3) := Mux(unsign_sum(27, 4).orR === 0.U & unsign_sum(3) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(2) := Mux(unsign_sum(27, 3).orR === 0.U & unsign_sum(2) === 1.U , 1.U(1.W), 0.U(1.W))
    leading_vector(1) := Mux(unsign_sum(27, 2).orR === 0.U & unsign_sum(1) === 1.U ,1.U(1.W), 0.U(1.W))
    leading_vector(0) := Mux(unsign_sum(27, 1).orR === 0.U & unsign_sum(0) === 1.U , 1.U(1.W), 0.U(1.W))
       
    when(leading_vector(26) === 1.U){
        io.norm_sum := unsign_sum(26,4)
        io.norm_exp := 0.U(8.W)
    } .elsewhen(leading_vector(25) === 1.U){
        io.norm_sum := unsign_sum(25,3)
        io.norm_exp := 0.U(8.W)
    }  .elsewhen(leading_vector(24) === 1.U){
        io.norm_sum := unsign_sum(24,2)
        io.norm_exp := 1.U(8.W)
    } .elsewhen(leading_vector(23) === 1.U){
        io.norm_sum := unsign_sum(23,1)
        io.norm_exp := 2.U(8.W)
    } .elsewhen(leading_vector(22) === 1.U){
        io.norm_sum := unsign_sum(22,0)
        io.norm_exp := 3.U(8.W)
    } .elsewhen(leading_vector(21) === 1.U){
        io.norm_sum := Cat(0.U(1.W),unsign_sum(21,0))
        io.norm_exp := 4.U(8.W)
    } .elsewhen(leading_vector(20) === 1.U){
        io.norm_sum := unsign_sum(20,0)
        io.norm_exp := 5.U(8.W)
    } .elsewhen(leading_vector(19) === 1.U){
        io.norm_sum := unsign_sum(19,0)
        io.norm_exp := 6.U(8.W)
    } .elsewhen(leading_vector(18) === 1.U){
        io.norm_sum := unsign_sum(18,0)
        io.norm_exp := 7.U(8.W)
    } .elsewhen(leading_vector(17) === 1.U){
        io.norm_sum := unsign_sum(17,0)
        io.norm_exp := 8.U(8.W)
    } .elsewhen(leading_vector(16) === 1.U){
        io.norm_sum := unsign_sum(16,0)
        io.norm_exp := 9.U(8.W)
    } .elsewhen(leading_vector(15) === 1.U){
        io.norm_sum := unsign_sum(15,0)
        io.norm_exp := 10.U(8.W)
    } .elsewhen(leading_vector(14) === 1.U){
        io.norm_sum := unsign_sum(14,0)
        io.norm_exp := 11.U(8.W)
    } .elsewhen(leading_vector(13) === 1.U){
        io.norm_sum := unsign_sum(13,0)
        io.norm_exp := 12.U(8.W)
    } .elsewhen(leading_vector(12) === 1.U){
        io.norm_sum := unsign_sum(12,0)
        io.norm_exp := 13.U(8.W)
    } .elsewhen(leading_vector(11) === 1.U){
        io.norm_sum := unsign_sum(11,0)
        io.norm_exp := 14.U(8.W)
    } .elsewhen(leading_vector(10) === 1.U){
        io.norm_sum := unsign_sum(10,0)
        io.norm_exp := 15.U(8.W)
    } .elsewhen(leading_vector(9) === 1.U){
        io.norm_sum := unsign_sum(9,0)
        io.norm_exp := 16.U(8.W)
    } .elsewhen(leading_vector(8) === 1.U){
        io.norm_sum := unsign_sum(8,0)
        io.norm_exp := 17.U(8.W)
    } .elsewhen(leading_vector(7) === 1.U){
        io.norm_sum := unsign_sum(7,0)
        io.norm_exp := 18.U(8.W)
    } .elsewhen(leading_vector(6) === 1.U){
        io.norm_sum := unsign_sum(6,0)
        io.norm_exp := 19.U(8.W)
    } .elsewhen(leading_vector(5) === 1.U){
        io.norm_sum := unsign_sum(5,0)
        io.norm_exp := 20.U(8.W)
    } .elsewhen(leading_vector(4) === 1.U){
        io.norm_sum := unsign_sum(4,0)
        io.norm_exp := 21.U(8.W)
    } .elsewhen(leading_vector(3) === 1.U){
        io.norm_sum := unsign_sum(3,0)
        io.norm_exp := 22.U(8.W)
    } .elsewhen(leading_vector(2) === 1.U){
        io.norm_sum := unsign_sum(2,0)
        io.norm_exp := 23.U(8.W)
    } .elsewhen(leading_vector(1) === 1.U){
        io.norm_sum := unsign_sum(1,0)
        io.norm_exp := 24.U(8.W)
    } .elsewhen(leading_vector(0) === 1.U){
        io.norm_sum := unsign_sum(0,0)
        io.norm_exp := 25.U(8.W)
    } .otherwise{
        io.norm_sum := 0.U((output_width).W)
        io.norm_exp := 0.U(8.W)
    }
    
//println(getVerilog(new final_norm_noSUB(27, 23)))
}
object mac4Driver extends App {
  chisel3.Driver.execute(args, () => new final_norm_noSUB(27,23))
}
