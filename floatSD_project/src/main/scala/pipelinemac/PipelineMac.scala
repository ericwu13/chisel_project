package pipelinemac
import chisel3._
import chisel3.util._

import ppgenerator._
import signadder._
import align._
import max_exp_determ._
import norm._
import treeadder._

class MacInput(val grpnum: Int) extends Bundle {
	val input_x = Input(Vec(9, new Float12()))
	val input_w = Input(Vec(9, new FloatSD(grpnum)))
	val skip = Input(UInt(9.W))
}

class PipelineMac(val grpnum: Int) extends Module {
    val io = IO(new Bundle {
		val in = Input(new MacInput(grpnum))
		val out = Output(new Float32())
    })
	// input reg
	val input_x_reg = Reg(Vec(9, new Float12()))
	val input_w_reg = Reg(Vec(9, new FloatSD(grpnum)))
	val skip_1_reg = Reg(UInt(9.W))
	for(i <- 0 until 9) {
		input_x_reg(i) := Mux(io.in.skip(i) === 0.U(1.W), io.in.input_x(i), input_x_reg(i))
	}
	skip_1_reg := io.in.skip

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
	val max_determ_io = Module(new Max_exp_determ(8)).io	
	max_determ_io.in.skip := skip_1_reg
	for(i <- 0 until 9) {
		max_determ_io.in.exp(i) := exp(i)
	}
	max_exp := max_determ_io.out.max_exp

	// 1st stage pipeline reg
	val pp_reg = Reg(Vec(9, Vec(2, UInt((3*grpnum+3+1).W))))
	val exp_reg  = Reg(Vec(9, UInt(9.W)))
	val max_exp_reg  = Reg(Vec(9, UInt(9.W)))
	val skip_2_reg = Reg(UInt(9.W))
	for(i <- 0 until 9) {
		pp_reg(i)(0) := Mux(skip_1_reg(8-i) === 0.U(1.W), pp(i)(0), pp_reg(i)(0))
		pp_reg(i)(1) := Mux(skip_1_reg(8-i) === 0.U(1.W), pp(i)(0), pp_reg(i)(0))
		exp_reg(i) := Mux(skip_1_reg(8-i) === 0.U(1.W), exp(i), exp_reg(i))
		max_exp_reg(i) := Mux(skip_1_reg(8-i) === 0.U(1.W), max_exp, max_exp_reg(i))
	}
	skip_2_reg := skip_1_reg

	// align
	val align_pp = Wire(Vec(9, Vec(2, UInt((3*grpnum+3+15).W))))
	// align module here...
	val align_pp_io = Vec.fill(9) {Module(new Align_CG2(3,8,3)).io }
	for(i <- 0 until 9) {
		align_pp_io(i).in.pp1 := pp_reg(i)(0)
		align_pp_io(i).in.pp2 := pp_reg(i)(1)
		align_pp_io(i).in.exp := exp_reg(i)
		align_pp_io(i).in.max_exp := max_exp_reg(i)
		align_pp(i)(0) := align_pp_io(i).out.align_pp1
		align_pp(i)(1) := align_pp_io(i).out.align_pp2
	}

	// sign adder
	val sign_result = Wire(UInt(6.W))
	val skip_3_reg = Reg(UInt(9.W))
	val max_exp_reg_2 = Reg(UInt(9.W))
	val sign_adder_io = Module(new SignAdder()).io
	for(i <- 0 until 9) {
		sign_adder_io.in(i)(0) := ~skip_2_reg(8-i)&align_pp(i)(0)(23)
		sign_adder_io.in(i)(1) := ~skip_2_reg(8-i)&align_pp(i)(1)(23)
	}
	sign_result := sign_adder_io.out

	// 2nd stage pipline reg
	val align_pp_reg = Reg(Vec(9, Vec(2, UInt((3*grpnum+3+15).W))))
	val sign_result_reg = Reg(UInt(6.W))
	for(i <- 0 until 9) {
		align_pp_reg(i)(0) := Mux(skip_2_reg(8-i)===0.U(1.W), align_pp(i)(0), align_pp_reg(i)(0))
		align_pp_reg(i)(1) := Mux(skip_2_reg(8-i)===0.U(1.W), align_pp(i)(1), align_pp_reg(i)(1))
	}
	sign_result_reg := sign_result
	max_exp_reg_2 := max_exp_reg(0)
	skip_3_reg := skip_2_reg

	// adder tree
	val align_pp_tree = Wire(Vec(9, Vec(2, UInt((3*grpnum+3+15).W))))
	val tree_adder_io = Module(new treeadder(5,8,3,23,23)).io
	val out = Wire(UInt(28.W))
	for(i <- 0 until 9) {
		align_pp_tree(i)(0) := Mux(skip_3_reg(8-i), align_pp_reg(i)(0), 0.U(24.W))
		align_pp_tree(i)(1) := Mux(skip_3_reg(8-i), align_pp_reg(i)(1), 0.U(24.W))
	}

	out := tree_adder_io.out
	for(i <- 0 until 9) {
		tree_adder_io.in(2*i) := align_pp_tree(i)(0)
		tree_adder_io.in(2*i+1) := align_pp_tree(i)(1)
	}
	// adder tree module here
	val skip_4 = Wire(UInt(1.W))
	skip_4 := skip_3_reg.andR

	// 3rd pipeline stage	
	val skip_4_reg = Reg(UInt(1.W))
	val out_reg = Reg(UInt(28.W))
	val max_exp_reg_3 = Reg(UInt(9.W))
	out_reg := Mux(skip_4 === 0.U(1.W), out, out_reg)
	max_exp_reg_3 := max_exp_reg_2
	skip_4_reg := skip_4

	// normalize
	val norm_sum = Wire(UInt(23.W))
	val exp_diff = Wire(UInt(8.W))
	val sign = Wire(UInt(1.W))
	val norm_io = Module(new final_norm_noSUB(28, 23)).io
	norm_io.input_exp := max_exp_reg_3
	norm_io.PP_sum := out_reg
	norm_sum := norm_io.norm_sum
	exp_diff := norm_io.norm_exp
	sign := norm_io.sign

	val skip_5 = Wire(UInt(1.W))
	skip_5 := Mux(skip_4_reg === 1.U(1.W), 1.U(1.W), 0.U(1.W))

	// 4th pipeline stage
	val norm_sum_reg = Reg(UInt(23.W))
	val exp_diff_reg = Reg(UInt(8.W))
	val max_exp_reg_4 = Reg(UInt(9.W))
	val sign_reg = Reg(UInt(1.W))
	val skip_5_reg = Reg(UInt(1.W))
	norm_sum_reg := Mux(skip_4_reg === 0.U(1.W), norm_sum, norm_sum_reg)
	exp_diff_reg := Mux(skip_4_reg === 0.U(1.W), exp_diff, exp_diff_reg)
	max_exp_reg_4 := Mux(skip_4_reg === 0.U(1.W), max_exp_reg_3, max_exp_reg_4)
	sign_reg := Mux(skip_4_reg === 0.U(1.W), sign , sign_reg)
	skip_5_reg := skip_5

	val mac_output_tmp = Wire(new Float32())
	val exp_tmp = Wire(UInt(9.W))
	exp_tmp := max_exp_reg_4 - exp_diff_reg - 118.U(9.W)
	mac_output_tmp.sign := Mux((skip_5_reg===0.U(1.W)), sign_reg, 0.U(1.W))
	mac_output_tmp.mantissa := Mux((skip_5_reg===0.U(1.W)), norm_sum_reg, 0.U(23.W))
	mac_output_tmp.exponent := Mux((skip_5_reg===0.U(1.W)), exp_tmp(7,0), 0.U(8.W))
	val mac_output_reg = Reg(new Float32())
	mac_output_reg := mac_output_tmp
	io.out := mac_output_reg

}

object PipelineMac extends App {
  chisel3.Driver.execute(args, () => new PipelineMac(2))
}
