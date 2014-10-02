class Color
#this creates set and get methods for the attr shown
	attr_reader :r, :g, :b
#every time a NEW INSTANCE is created, these get set.
#each new instance will have to give these values as input params
#example - Color.new(2, 3, 4)
	def initialize(r, g, b)
		@r = r
		@g = g
		@b = b
	end

	def brightness_index
		((299*@r) + (587*@g) + (114*@b))/1000
	end
#this will take in another color and compare it to 
#THIS INSTANCE
	def brightness_difference(another_color)
		((self.brightness_index).abs - (another_color.brightness_index).abs).abs
	end

	def hue_difference(another_color)
		(self.r - another_color.r).abs +
		(self.g - another_color.g).abs +
		(self.b - another_color.b).abs
	end

	def enough_contrast?(another_color)
#this should return a boolean
		(self.brightness_difference(another_color) > 125) &&
		(self.hue_difference(another_color) > 500)
	end

end

test1 = Color.new(42, 42, 42)
test2 = Color.new(210, 210, 210)
p test1.hue_difference(test2)
p test1.enough_contrast?(test2)