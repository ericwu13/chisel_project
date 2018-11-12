package ppgenerator
import chisel3._
import chisel3.util._
import ppgenerator._

class PPInput(val grpnum: Int) extends Bundle {
  val input = Input(new Float32())
  val weight = Input(new FloatSD(grpnum))
}
class PPOutput(val grpnum: Int) extends Bundle {
  val pp_1 = Output(UInt((3*grpnum+3+1).W))
  val pp_2 = Output(UInt((3*grpnum+3+1).W))
  val exponent = Output(UInt(9.W))
}

class PPGenerator(val grpnum: Int) extends Module {
  val io = IO(new Bundle {
    val in = Input(new PPInput(grpnum))
    val out = Output(new PPOutput(grpnum))
  })
  
  val pp1_tmp = Wire(UInt((grpnum*3+3).W))
  val pp2_tmp = Wire(UInt((grpnum*3+3).W))

  pp1_tmp := Mux(io.in.weight.grps(1)(1,0) === 3.U(2.W), 0.U, Cat(1.U, io.in.input.mantissa(22,20)) << io.in.weight.grps(1)(1,0) << 3)
  pp2_tmp := Mux(io.in.weight.grps(0)(1,0) === 3.U(2.W), 0.U, Cat(1.U, io.in.input.mantissa(22,20)) << io.in.weight.grps(0)(1,0))

  io.out.pp_1 := Cat(io.in.input.sign ^ io.in.weight.grps(1)(2), pp1_tmp)
  io.out.pp_2 := Cat(io.in.input.sign ^ io.in.weight.grps(0)(2), pp2_tmp)
  io.out.exponent := io.in.input.exponent +& io.in.weight.exponent
}

object PPGeneratorDriver extends App {
  chisel3.Driver.execute(args, () => new PPGenerator(2))
}

