import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class Align_CG2(sig_width: Int, exp_width: Int, grp_size: Int) extends Module{
    val io = IO(new Bundle{ 
        val pp1 = Input(UInt((sig_width + grp_size + grp_size + 1).W))
        val pp2 = Input(UInt((sig_width + grp_size + grp_size + 1).W))
        val exp = Input(UInt((exp_width + 1).W))
        val max_exp = Input(UInt((exp_width + 1).W))
        val align_pp1 = Output(UInt((sig_width + grp_size + grp_size + 15).W))
        val align_pp2 = Output(UInt((sig_width + grp_size + grp_size + 15).W))
    })
    val pp1_pad = Wire(UInt((sig_width + grp_size + grp_size + 15).W))
    val pp2_pad = Wire(UInt((sig_width + grp_size + grp_size + 15).W))
    pp1_pad := Cat(io.pp1(8, 0), 0.U(14.W))
    pp2_pad := Cat(io.pp2(8, 0), 0.U(14.W))
    val pp1_shift = Wire(UInt((sig_width + grp_size + grp_size + 15).W))
    val pp2_shift = Wire(UInt((sig_width + grp_size + grp_size + 15).W))
    pp1_shift := pp1_pad >> io.max_exp- io.exp
    pp2_shift := pp2_pad >> io.max_exp- io.exp
    
    io.align_pp1 := Mux(io.pp1(9), ~pp1_shift + 1.U((sig_width + grp_size + grp_size + 15).W) , pp1_shift)
    io.align_pp2 := Mux(io.pp2(9), ~pp2_shift+ 1.U((sig_width + grp_size + grp_size + 15).W) , pp2_shift)

    
}