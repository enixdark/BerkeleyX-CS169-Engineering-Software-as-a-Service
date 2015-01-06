"""
Define a method sum which takes an array of integers as an argument
and returns the sum of its elements. For an empty array it should return zero.
"""
def sum(array)
	return 0 if array.nil? or array.none?
	total = 0
	array.each {|i| total = total + i }
	total
end


"""
Define a method max_2_sum which takes an array of integers as an argument and
returns the sum of its two largest elements. For an empty array it
should return zero. For an array with just one element, it should return that element.
"""
def max_2_sum(array)
	sum(array.sort[-2..-1])
end

"""
Define a method sum_to_n? which takes an array of integers and an additional integer, n,
as arguments and returns true if any two distinct elements
in the array of integers sum to n. An empty array or single element array should both return false.
"""
require 'set'
def sum_to_n?(array)
	data = Set.new array
	return false if data.size < 2
	return true
end
