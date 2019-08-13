require 'pry'

require_relative 'driver.rb'
require_relative 'passenger.rb'
require_relative 'ride.rb'


erin = Passenger.new("erin")
ben = Passenger.new("ben")
mark = Passenger.new("mark")

mark.take_ride(25, kate)


binding.pry
puts "end test"