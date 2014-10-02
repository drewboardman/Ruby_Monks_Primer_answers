def sort_string(sentence)
	sorted_array = sentence.split.sort {|x, y| x.length <=> y.length}
	sorted_array.join(" ")
end	

a = "Lumberjacks usually wear red shirt with white and grey stripes"
p sort_string(a)