#!/usr/bin/env ruby

require_relative 'calculator'
require 'test/unit'

class TestCalculator < Test::Unit::TestCase
  def setup
    @calculator = Calculator.new
  end
  
  def test_add
    assert_equal(5, @calculator.add(2, 3))
    assert_equal(0, @calculator.add(-2, 2))
    assert_equal(-5, @calculator.add(-2, -3))
  end
  
  def test_subtract
    assert_equal(-1, @calculator.subtract(2, 3))
    assert_equal(4, @calculator.subtract(2, -2))
    assert_equal(1, @calculator.subtract(-2, -3))
  end
  
  def test_multiply
    assert_equal(6, @calculator.multiply(2, 3))
    assert_equal(-4, @calculator.multiply(2, -2))
    assert_equal(6, @calculator.multiply(-2, -3))
  end
  
  def test_divide
    assert_equal(2, @calculator.divide(6, 3))
    assert_equal(-1, @calculator.divide(2, -2))
    assert_equal(0.5, @calculator.divide(1, 2))
    assert_raise(ZeroDivisionError) { @calculator.divide(2, 0) }
  end
end 