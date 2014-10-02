def random_select(arr, elems)
	rands = []
	elems.times do
		rands.push(arr[rand(arr.size)])
	end
	rands
end

a = [1, 4, 5, 6, 4, 3, 4, 5, 6, 5, 4, 3, "yolo"]
p random_select(a, 5)