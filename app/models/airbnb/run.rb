require "pry"

require_relative "guest.rb"
require_relative "listing.rb"
require_relative "trip.rb"


erin = Guest.new("Erin")
ben = Guest.new("Ben")
katie = Guest.new("Katie")

listing_chi_town = Listing.new("Chicago")
listing_dt_town = Listing.new("Detroit")
listing_nyc = Listing.new("New York City")


#test data

binding.pry
puts "end test"