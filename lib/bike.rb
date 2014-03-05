class Bike

	#the initialize method is always called when you create a new class by typing Bike.new
	def initialize 
		fix
	end

	def broken?
		@broken
	end

	def break
		#all instance variables begin with "@"
		#this must be an instance variable because we'll need it in other methods
		@broken = true	
	end

	def fix
		@broken = false
	end
end