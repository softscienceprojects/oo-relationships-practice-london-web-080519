class Location
attr_reader :location
@@all = []

def initialize(location)
    @location = location
    @@all << self
end

def self.all
    @@all
end

def self.least_clients
    # should find which location has the least clients training there.
end


end
