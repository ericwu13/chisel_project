package pipelinemac
import chisel3._
import chisel3.util._

import ppgenerator._
import signadder._

class MacInput(val grpnum: Int) extends Bundle {
	val input_x = Input(Vec(9, new Float32()))
	val input_w = Input(Vec(9, new FloatSD(grpnum)))
	val skip = Input(UInt(9.W))
}

class PipelineMac(val grpnum: Int) extends Module {
    val io = IO(new Bundle {
		val in = Input(new MacInput(grpnum))
		val out = Output(new Float32())
    })
	// input reg
	val input_x_reg = Reg(Vec(9, new Float32()))
	val input_w_reg = Reg(Vec(9, new FloatSD(grpnum)))
	val skip_bit_vector = Reg(UInt(9.W))
	for(i <- 0 until 9) {
		input_x_reg(i) := Mux(io.in.skip(i) === 0.U(1.W), io.in.input_x(i), input_x_reg(i))
	}
	skip_bit_vector := io.in.skip

	// pp generation
	val pp = Wire(Vec(9, Vec(2, UInt((3*grpnum+3+1).W))))
	val exp = Wire(Vec(9, UInt(9.W)))
	val gen_pp_io = Vec.fill(9) {Module(new PPGenerator(grpnum)).io }
	for(i <- 0 until 9) {
		gen_pp_io(i).in.input := input_x_reg(i)
		gen_pp_io(i).in.weight := input_w_reg(i)
		pp(i)(0) := gen_pp_io(i).out.pp_1
		pp(i)(1) := gen_pp_io(i).out.pp_2
		exp(i) := gen_pp_io(i).out.exponent
	}

	// max exp determination
	val max_exp = Wire(UInt(9.W))

}