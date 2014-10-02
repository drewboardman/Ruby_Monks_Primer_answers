def kaprekar?(k)
	digits = k.to_s.size
	square = (k**2).to_s


	puts "k           :  #{k}"
    puts "no_of_digits:  #{digits}"
    puts "square      :  #{square}"    

	right_half = square[-digits..-1]


	#the first/left half is going to be ternary, since it could
	#be 1 less in size than the second half
	left_half = square.size.even? ? square[0..(digits-1)] : square[0..(digits-2)]

	k == left_half.to_i + right_half.to_i
end

p "Give a Kaprekar number"
a = gets.chomp.to_i
p kaprekar?(a)