def combos(n)
	n_split = n.to_s.split('').flat_map {|i| i}
	combo_array = n_split.permutation.to_a
	combo_array.map { |ary| ary.join.to_i  }
end

test = combos(123)
p test