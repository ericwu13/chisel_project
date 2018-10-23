package fuck
import chisel3.iotesters.PeekPokeTester
import chisel3._
import chisel3.util._
import chisel3.iotesters._
import org.scalatest.{Matchers, FlatSpec}

class Mac4Test(c: Mac4) extends PeekPokeTester(c) {
  val x = Array.fill(4){ 0 }
  val w = Array.fill(4){ 0 }
  val out = Array.fill(4){ 0 }
  println("====== Start ======")
  poke(c.io.in.start, 1)
  for(i <- 0 until 4) {
    x(i) = rnd.nextInt(16)
    w(i) = rnd.nextInt(16)
    poke(c.io.in.x_vec(i), x(i))
    poke(c.io.in.w_vec(i), w(i))
  }
  step(1)
  for(s <- 0 until 4) {
    println("====== Round " + s + " ======")
    println("= Before clk =")
    println(peek(c.io.out.y_vec).toString)
    for(i <- 0 until 4) {
      out(i) = out(i) + w(i) * x(i)
      w(i) = rnd.nextInt(200)
      poke(c.io.in.w_vec(i), w(i))
    }
    step(1)
    println("= After clk =")
    println(peek(c.io.out.y_vec).toString)
    if (peek(c.io.out.done) == 1) {
      println("====== DONE ======")
      expect(c.io.out.y_vec(0), out(0))
      expect(c.io.out.y_vec(1), out(1))
      expect(c.io.out.y_vec(2), out(2))
      expect(c.io.out.y_vec(3), out(3))
      println(peek(c.io.out.y_vec).toString)
    }
  }
  expect(c.io.out.done, 1) 
  // println(peek(c.io.out.done).toString)
}
class Mac4Spec extends FlatSpec with Matchers {
  behavior of "Mac4"

  it should "compute Mac4 excellently" in {
    chisel3.iotesters.Driver(() => new Mac4) { c =>
      new Mac4Test(c)
    } should be(true)
  }
}
