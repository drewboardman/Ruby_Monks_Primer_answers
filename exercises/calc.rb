#this is a calculator class that has methods to add and subtract inputs

class Calc

  def add(*numbers)
  	numbers.inject {|sum, number| sum + number}
  end	

  def subtract(*numbers)
  	number.inject {|total, number| total - number}
  end	
end

p add(1,2,3,4,5)

p subtract(-10, 5)