#take each multiple of 3 or 5 less than n 
#return sum off all these
	
def sum(n)
	mult_ary(n).inject(0) {|sum, el| sum + el}
end

def mult_ary(n)
	(1..n-1).select { |x| x%3==0 || x%5 ==0  }
end

p sum(1000)