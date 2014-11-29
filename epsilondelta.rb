 
require "minitest/autorun"

#
# (function_eval f i) : Function Evaluator
# Given a Function f and an input i, calculates the output of that function.
# function_eval String Num -> Num
# Example : (function_eval "x*x" 3) -> 9

def function_eval(f,i)
  eval(f.gsub("x",i.to_s))
end

class TestMeme < Minitest::Test
	def test_function_eval
  	assert_equal -1, function_eval("(Math.cos x)",Math::PI)
  	assert_equal -1, function_eval("(Math.cos x)",3*Math::PI)
  	assert_equal 2, function_eval("1+1",302)
  	assert_equal 1, function_eval("(x+4).abs",-5)
	end
end