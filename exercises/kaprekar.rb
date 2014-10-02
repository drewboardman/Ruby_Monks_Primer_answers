def kaprekar?(k)

  no_of_digits = k.to_s.size
  square = (k ** 2).to_s

  puts "k           :  #{k}"
  puts "no_of_digits:  #{no_of_digits}"
  puts "square      :  #{square}"

  second_half = square[-no_of_digits..-1]
  first_half =
    square.size.even? ?
      square[0..no_of_digits-1] :
      square[0..no_of_digits-2]

  puts "first_half  :  #{first_half}"
  puts "second_half :  #{second_half}"

  k == first_half.to_i + second_half.to_i
end

p "Give a Kaprekar number"
a = gets.chomp.to_i
p kaprekar?(a)

# k           :  9
# no_of_digits:  1
# square      :  81
# first_half  :  8
# second_half :  1

# return value: true