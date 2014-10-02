def singles(ary)
	ary.select {|x| ary.count(x) == 1}
end

a = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7]
p singles(a)