
class DockingStation

	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY) 
		#This is a common pattern for passing optional arguments into Ruby. 
		#The Hash.fetch method retrieves the value for the given key (`options[:capacity]` in this case) and if the key is not found, it returns the second argument (`DEFAULT_CAPACITY`). 
		#So if the capacity is passed, it's used, otherwise the default one will be assigned.
		@bikes = []
	end

	def full?
		bike_count == @capacity
	end

	def bike_count
		@bikes.count
	end

	def dock(bike)
		#if the capacity is reached, raise an exception
		raise "Station is full" if full?
		@bikes << bike
	end

	def release(bike)
		@bikes.delete(bike)
	end

end