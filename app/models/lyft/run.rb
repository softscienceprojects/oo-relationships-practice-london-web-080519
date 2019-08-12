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

binding.pry
puts "end test"