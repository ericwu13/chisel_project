package pipelinemac

import chisel3.iotesters.PeekPokeTester
import chisel3._
import chisel3.util._
import chisel3.iotesters._
import org.scalatest.{Matchers, FlatSpec}
import ppgenerator._

class PipelineMacTest(c: PipelineMac) extends PeekPokeTester(c) {
	var input_x = Array.fill(9){ new Float12() } 
	var input_w = Array.fill(9){ new FloatSD(2) } 
	var input_skip = 0.U(9.W)
	poke(c.io.in.skip, input_skip)
	for(i <- 0 until 9) {
		poke(c.io.in.input_x(i).sign, 0.U)
		poke(c.io.in.input_x(i).exponent, (128).U)
		poke(c.io.in.input_x(i).mantissa, 4.U)
		poke(c.io.in.input_w(i).grps(1), 6.U)
		poke(c.io.in.input_w(i).grps(0), 6.U)
		poke(c.io.in.input_w(i).exponent, (128).U)
	}
	for(i <- 0 until 10) {
		step(1)
		println(peek(c.io.out).toString)
	}
}

class PipelineMacSpec extends FlatSpec with Matchers {
  behavior of "PipelineMac"
  it should "compute PipelineMac excellently" in {
    chisel3.iotesters.Driver(() => new PipelineMac(2)) { c =>
      new PipelineMacTest(c)
    } should be(true)
  }
}