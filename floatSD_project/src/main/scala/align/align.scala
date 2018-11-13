package align
import chisel3._
import chisel3.util._
//import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class AlignInput(val sig_width: Int, val exp_width: Int, val grp_size: Int) extends Bundle {
    val pp1 = Input(UInt((sig_width + grp_size + grp_size + 1).W))
    val pp2 = Input(UInt((sig_width + grp_size + grp_size + 1).W))
    val exp = Input(UInt((exp_width + 1).W))
    val max_exp = Input(UInt((exp_width + 1).W))
}
class AlignOuput(val sig_width: Int, val exp_width: Int, val grp_size: Int) extends Bundle {
    val align_pp1 = Output(UInt((sig_width + grp_size + grp_size + 15).W))
    val align_pp2 = Output(UInt((sig_width + grp_size + grp_size + 15).W))
}

class Align_CG2(val sig_width: Int, val exp_width: Int, val grp_size: Int) extends Module{
    val io = IO(new Bundle{ 
        val in = new AlignInput(sig_width, exp_width, grp_size)
        val out = new AlignOuput(sig_width, exp_width, grp_size)
    })
    val pp1_pad = Wire(UInt((sig_width + grp_size + grp_size + 15).W))
    val pp2_pad = Wire(UInt((sig_width + grp_size + grp_size + 15).W))
    pp1_pad := Cat(io.in.pp1(8, 0), 0.U(14.W))
    pp2_pad := Cat(io.in.pp2(8, 0), 0.U(14.W))
    val pp1_shift = Wire(UInt((sig_width + grp_size + grp_size + 15).W))
    val pp2_shift = Wire(UInt((sig_width + grp_size + grp_size + 15).W))
    pp1_shift := pp1_pad >> io.in.max_exp- io.in.exp
    pp2_shift := pp2_pad >> io.in.max_exp- io.in.exp
    
    io.out.align_pp1 := Mux(io.in.pp1(9), ~pp1_shift + 1.U((sig_width + grp_size + grp_size + 15).W) , pp1_shift)
    io.out.align_pp2 := Mux(io.in.pp2(9), ~pp2_shift+ 1.U((sig_width + grp_size + grp_size + 15).W) , pp2_shift)
    
}