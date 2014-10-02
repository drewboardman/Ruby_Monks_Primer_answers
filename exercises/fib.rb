class Fibo
  class << self
    include Enumerable

    def self.each
      return to_enum unless block_given?
      a = 0; b = 1
      1.upto(Float::INFINITY) do |i|
        a, b = b, a + b
        yield a
      end
    end
  end
end

puts Fibo.take_while { |i| i < 4000000 }.
          select(&:even?).
          inject(:+)

class Fibo
	include Enumerable

	def self.each
		return to_enum unless block_given?
		a = 0; b = 1
	end
end