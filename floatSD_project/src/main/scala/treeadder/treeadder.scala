package treeadder
import chisel3._
import chisel3.util._

class treeadder(val sig_width: Int, val exp_width: Int, 
                val grp_size: Int, val threshold: Int, adding_width:Int) extends Module {
    val io = IO(new Bundle {
        //val sign_bit = Input(UInt(6.W))
        val in = Input(Vec(18, UInt((adding_width).W)))
        val out = Output(UInt((adding_width+5).W))
    })

    io.out := Cat(0.U(5.W),io.in(0)+
    io.in(1)+
    io.in(2)+
    io.in(3)+
    io.in(4)+
    io.in(5)+
    io.in(6)+
    io.in(7)+
    io.in(8)+
    io.in(9)+
    io.in(10)+
    io.in(11)+
    io.in(12)+
    io.in(13)+
    io.in(14)+
    io.in(15)+
    io.in(16)+
    io.in(17))
        
}
/*

class F_adder extends Module{

}

class Adder extends Module { 
  val io = new Bundle { 
    val a    = UInt(INPUT, 1) 
    val b    = UInt(INPUT, 1) 
    val cin  = UInt(INPUT, 1) 
    val sum  = UInt(OUTPUT, 1) 
    val cout = UInt(OUTPUT, 1) 
  } 
  // Generate the sum 
  val a_xor_b = io.a ^ io.b 
  io.sum := a_xor_b ^ io.cin 
  // Generate the carry 
  val a_and_b = io.a & io.b 
  val b_and_cin = io.b & io.cin 
  val a_and_cin = io.a & io.cin 
  io.cout := a_and_b | b_and_cin | a_and_cin 
}
    

*/