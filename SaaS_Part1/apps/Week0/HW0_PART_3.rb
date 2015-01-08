"""
 Define a class BookInStock which represents a book with an isbn number,
 , and price of the book as a floating-point number, price, as attributes. The constructor
 should accept the ISBN number (a string) as the first argument and price as second argument,
 and should raise ArgumentError (one of Ruby's built-in exception types)
 if the ISBN number is the empty string or if the price is less than or equal to zero.

Include the proper getters and setters for these attributes.
Include a method price_as_string that returns the price of the book with a leading dollar sign and trailing zeros,
that is, a price of 20 should display as \"$20.00\" and a price of 33.8 should display as \"$33.80\".
"""

class BookInStock
	attr_accessor :isbn,:price

	def initialize(isbn,price)
		@isbn = isbn
		@price = price
	end

	def isbn=(isbn)
		if isbn.empty?
			raise ArgumentError("ISBN number is the empty string")
		end
		@isbn = isbn
	end

	def price=(price)
		_check = price =~ /[^d]/
		if price <= 0
			raise ArgumentError("price must greater than zero")
		elsif !_check.nil?
			raise ArgumentError("price must a digit")
		else
			@price = price
		end
	end

	def price_as_string
		money = "$%.2f" % @price
		"the book #{@isbn} have price #{money}"
	end
end