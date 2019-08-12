require "pry"

require_relative "client.rb"
require_relative "location.rb"
require_relative "trainer.rb"


erin = Client.new("erin")
erin2 = Client.new("erin2")
erin3 = Client.new("erin3")

ben = Trainer.new("ben1")
ben2 = Trainer.new("ben2")
ben3 = Trainer.new("ben3")

soho = Location.new("soho")
finsbury = Location.new("finsbury")
nyc = Location.new("nyc")


erin.assign_trainer(ben)
erin2.assign_trainer(ben2)
erin3.assign_trainer(ben2)


binding.pry
puts "finished testing"