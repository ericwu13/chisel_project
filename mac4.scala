import chisel3._
import chisel3.util.Enum
import chisel3.util.switch
import chisel3.util.is
//import Chisel.UInt

class Mac4Input extends Bundle {
  val start = Input(Bool())
  val x_vec = Input(Vec(4, SInt(16.W)))
  val w_vec = Input(Vec(4, SInt(16.W)))
}

class Mac4Output extends Bundle {
  val y_vec = Output(Vec(4, SInt(16.W)))
  val done = Output(Bool())
}

class Mac4 extends Module {
  val io = IO(new Bundle {
    val in = Input(new Mac4Input())
    val out = Output(new Mac4Output())
  })
  val x = Reg(Vec(4, SInt(16.W)))
  val w = Reg(Vec(4, SInt(16.W)))
  val y = Reg(Vec(4, SInt(16.W)))

  val sIdle::s1::s2::s3::s4::Nil = Enum(5)
  val state = RegInit(sIdle)

  when(io.in.start) {
    x := io.in.x_vec
    w := io.in.w_vec
  }

  io.out.done := (state === s4)
  io.out.y_vec := y

  //switch (state) {
    when (state === sIdle) {
      when (io.in.start) {
        state := s1
      }
    }
    when (state === s1) {
      y(0) := y(0) + x(0)* w(0)
      y(1) := y(1) + x(1)* w(1)
      y(2) := y(2) + x(2)* w(2)
      y(3) := y(3) + x(3)* w(3)
      state := s2
    }
    when (state === s2) {
      y(0) := y(0) + x(0)* w(0)
      y(1) := y(1) + x(1)* w(1)
      y(2) := y(2) + x(2)* w(2)
      y(3) := y(3) + x(3)* w(3)
      state := s3
    }
    when (state === s3) {
      y(0) := y(0) + x(0)* w(0)
      y(1) := y(1) + x(1)* w(1)
      y(2) := y(2) + x(2)* w(2)
      y(3) := y(3) + x(3)* w(3)
      state := s4
    }
    when (state === s4) {
      y(0) := y(0) + x(0)* w(0)
      y(1) := y(1) + x(1)* w(1)
      y(2) := y(2) + x(2)* w(2)
      y(3) := y(3) + x(3)* w(3)
      state := sIdle
    }
}

// Problem:
//
// Build a 4-to-1 multiplexer out of three 2-to-1 multiplexers
// The first multiplexer is already done for you
//

object mac4Driver extends App {
  chisel3.Driver.execute(args, () => new Mac4)
}
