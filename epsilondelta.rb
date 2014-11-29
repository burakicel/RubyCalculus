 
require "minitest/autorun"

#
# (function_eval f i) : Function Evaluator
# Given a Function f and an input i, calculates the output of that function.
# function_eval String Num -> Num
# Example : (function_eval "x*x" 3) -> 9

def function_eval(f,i)
  eval(f.gsub("x",i.to_s))
end

#
# (distance) : Distance Calculator
# Calculates the distances of two numbers, a and b
# distance_x Num Num -> Num
# Example : (distance -2 3) -> 5

def distance(a,b)
	(a-b).abs
end



#Tests
class TestMeme < Minitest::Test

	def test_function_eval
  	assert_equal -1, function_eval("(Math.cos x)",Math::PI)
  	assert_equal -1, function_eval("(Math.cos x)",3*Math::PI)
  	assert_equal 2, function_eval("1+1",302)
  	assert_equal 1, function_eval("(x+4).abs",-5)
	end

	def test_distance
  	assert_equal 1, distance(2,3)
  	assert_equal 5, distance(-2,3)
  	assert_in_delta 0.1, distance(2.9,3), 0.000000001
  	assert_equal 1, distance(3,2)
	end

end