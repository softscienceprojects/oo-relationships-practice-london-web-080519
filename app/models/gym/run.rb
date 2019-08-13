require "pry"

require_relative "client.rb"
require_relative "location.rb"
require_relative "trainer.rb"
require_relative "session.rb"


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

# erin.new_session(soho) #1 client soho
# erin.new_session(soho) #1 client soho
# erin.new_session(finsbury) #1 client finsbury
# erin2.new_session(finsbury) #2 clients finsbury
# erin3.new_session(finsbury) #3 clients finsbury
#nyc has no clients

binding.pry
puts "finished testing"