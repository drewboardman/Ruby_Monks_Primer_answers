#you want to create a sum method that can take a block and do that

class MyArray
	attr_reader :array

	def initialize(array)
		@array = array
	end

	def sum(initial_value = 0)
		if block_given?
			sum = initial_value
			array.each {|n| sum += yield(n)}
			sum
		else
			array.inject(initial_value) { |mem, var| mem + var  }
		end
	end
end

ary = MyArray.new([1, 3, 5, 7, 9])
p ary.sum
p ary.sum(0) {|n| n*2}