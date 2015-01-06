require_relative '../apps/Week1/HW0_PART_1'
require_relative '../apps/Week1/HW0_PART_2'
# require_relative '../apps/Week1/HW0_PART_3'
require 'byebug'
require 'test/unit'

class Week1TestCase < Test::Unit::TestCase

	def setup
  		@array1 = [1,2,3,4,5,6]
		@array2 = []
		@array3 = [1,0,0,1]
	end

	def test_sum_function
		assert_equal sum(@array1),21
		assert sum(@array2)==0
	end

	def test_max_sum
		assert_equal max_2_sum(@array1),11
		assert_equal max_2_sum(@array2),0
		assert_equal max_2_sum(@array3),2
	end

	def test_sum_to_n
		assert sum_to_n?(@array1)
		assert !sum_to_n?(@array2)
	end
end
