require 'pry'

require_relative 'driver.rb'
require_relative 'passenger.rb'
require_relative 'ride.rb'


erin = Passenger.new("erin")
ben = Passenger.new("ben")
mark = Passenger.new("mark")

neil = Driver.new("neil")
pam = Driver.new("pam")
kate = Driver.new("kate")

erin.take_ride(200, neil)
ben.take_ride(50, kate)
erin.take_ride(100, pam)
mark.take_ride(25, kate)


binding.pry
puts "end test"