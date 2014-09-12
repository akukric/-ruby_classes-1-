Car = Class.new
Corvette = Car.new

Car = Class.new  do
	def get_info
		"I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left."
	end
	def initialize 
		puts "the initialize method is running automatically"
		@fuel = 10 
		@distance = 0 
	end
	def drive(distance)
		@distance = distance
		@fuel = @fuel-(distance/20)
		if @fuel == 0
			puts "You're out of gas and you need to fill up!"
		end
	end
	def fuel_up
		gas_price = 3.5 * (10 - @fuel)
		puts "You have #{@fuel} gallons of gas left.  It's going to cost you $#{gas_price}0 to fill your tank."
	end
end