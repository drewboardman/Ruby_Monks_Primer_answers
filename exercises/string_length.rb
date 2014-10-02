# your original code is commented out below. The better way
# is how Ruby Monks did it.
test = ['hello', ' world']
def length_finder(list)
	list.map { |word| word.length  }
end	

# def length_finder(list)
# 	lengths = []
# 	list.each do |str|
# 		lengths.push(str.length)
# 	end
# 	lengths
# end

p length_finder(test)
p test