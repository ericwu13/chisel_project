package ppgenerator
import chisel3._

class Float12 extends Bundle {
  val sign = Bool()
  val exponent = UInt(8.W)
  val mantissa = UInt(3.W)
}

class Float32 extends Bundle {
  val sign = Bool()
  val exponent = UInt(8.W)
  val mantissa = UInt(23.W)
}

class FloatSD (val grpnum: Int) extends Bundle{
  val grps = Vec(grpnum, UInt(3.W))
  val exponent = UInt(8.W)
}

