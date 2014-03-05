module BikeContainer
	# A module is just like a class, except it cannot be instantiated, that is, you cannot do `BikeContainer.new`.

	DEFAULT_CAPACITY = 10

	def bikes
		@bikes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
		# we have created "accessor" methods for `@capacity` and `@bikes` instance variables.
	end

	def capacity=(value)
		@capacity = value
	end

	def bike_count
		bikes.count
	end

	def dock(bike)
		#if the capacity is reached, raise an exception
		raise "Station is full" if full?
		bikes << bike
	end

	def release(bike)
		bikes.delete(bike)
	end

	def full?
		bike_count == capacity
	end

	def available_bikes
		bikes.reject { |bike| bike.broken? }
	end
end