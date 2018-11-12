package signadder
import chisel3._
import chisel3.util._

class SignAdder extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt((18).W)) 
    val out = Output(UInt(6.W)) 
   })
 
  val tmp_1 = Wire(Vec(9, (UInt(2.W))))
  val tmp_2 = Wire(Vec(4, (UInt(3.W))))
  val tmp_3 = Wire(Vec(2, (UInt(4.W))))
  val tmp_4 = Wire(UInt(5.W))
  for(i <- 0 until 9) {
    tmp_1(i) := io.in(2*i) + io.in(2*i+1)
  }
  for(i <- 0 until 4) {
    tmp_2(i) := tmp_1(2*i) + tmp_1(2*i+1)
  }
  for(i <- 0 until 2) {
    tmp_3(i) := tmp_2(2*i) + tmp_2(2*i+1)
  }
  tmp_4 := tmp_3(0) + tmp_3(1)
  io.out := ~(tmp_4+&tmp_1(8)) + 1.asUInt(6.W)
}

object SignAdderDriver extends App {
  chisel3.Driver.execute(args, () => new SignAdder())
}
