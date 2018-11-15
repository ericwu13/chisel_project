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
    val tmp_1 = Wire(Vec(9, UInt((adding_width+5).W)))
    // printf(p"in ${io.in(0)}\n")
    for(i <- 0 until 9) {
        tmp_1(i) := io.in(2*i) +& io.in(2*i+1)
    }
    // printf(p"tmp_1_0 ${tmp_1(0)}\n")
    val tmp_2 = Wire(Vec(4, UInt((adding_width+5).W)))
    for(i <- 0 until 4) {
        tmp_2(i) := tmp_1(2*i) +& tmp_1(2*i+1)
    }
    val tmp_3 = Wire(Vec(2, UInt((adding_width+5).W)))
    for(i <- 0 until 2) {
        tmp_3(i) := tmp_2(2*i) +& tmp_2(2*i+1)
    }
    val tmp_4 = Wire(UInt((adding_width+5).W))
    tmp_4 := tmp_3(0) + tmp_3(1)

    io.out := Cat(0.U(5.W), tmp_4 + tmp_1(8))
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