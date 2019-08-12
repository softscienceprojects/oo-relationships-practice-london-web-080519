require "pry"

require_relative "client.rb"
require_relative "location.rb"
require_relative "trainer.rb"


erin = Client.new("erin")
ben = Trainer.new("ben")
soho = Location.new("soho")

binding.pry
puts "finished testing"