require_relative '../apps/Week1/HW0_PART_1'
require_relative '../apps/Week1/HW0_PART_2'
require_relative '../apps/Week1/HW0_PART_3'
require 'byebug'
require 'test/unit'

class Week1TestCase < Test::Unit::TestCase

	def setup
  		@array1 = [1,2,3,4,5,6]
		@array2 = []
		@array3 = [1,0,0,1]
		@s1 = "Hello World"
		@s2 = "10000" #=> 16
		@s3 = "Item"
		@s4 = "SItem"
		@s5 = "7654321"
	end

	def test_sum_function
		assert_equal sum(@array1),21
		assert sum(@array2)==0
	end

	def test_max_sum_function
		assert_equal max_2_sum(@array1),11
		assert_equal max_2_sum(@array2),0
		assert_equal max_2_sum(@array3),2
	end

	def test_sum_to_n_function
		assert sum_to_n?(@array1)
		assert !sum_to_n?(@array2)
	end

	def test_starts_with_consonant_function
		assert !starts_with_consonant?(@s1)
		assert starts_with_consonant?(@s3)
	end

	def test_starts_with_consonant_function
		assert !starts_with_consonant?(@s1)
		assert starts_with_consonant?(@s3)
	end

	def test_binary_multi_4_function
		assert binary_multiple_of_4?(@s2)
		assert !binary_multiple_of_4?(@s5)
	end

	def test_class_Book
		b = BookInStock.new(1,1000)
		b.price = 20.88
		assert_equal b.price_as_string,"the book 1 have price $20.88"
	end
end
