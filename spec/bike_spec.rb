#link to the Bike class

require_relative "../lib/bike"

#We're desribing the functionality of a specific class, Bike

describe Bike do
	#this is a specific feature (behaviour)
	#that we expect to be present
	it "should not be broken after we create it" do
		bike = Bike.new #initialize a new object of Bike class
		#expect an instance of this class to have a method "broken?" that should return false
		expect(bike).not_to be_broken # can be rewritten as ==> expect(bike.broken?).to be_false
	end
end