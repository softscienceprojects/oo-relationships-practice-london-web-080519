class Ride
    attr_accessor :distance, :passenger, :driver
    @@all = []

    def initialize(distance, passenger, driver)
        @distance = distance
        @passenger = passenger
        @driver = driver
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger
        #returns passenger for the ride
        @passenger
    end

    def driver
        #return driver object for the ride
        @driver
    end

    def self.average_distance #DONE
        #average distance of all rides
        total_distance = self.all.map {|ride| ride.distance}
        total_distance.reduce(:+) / total_distance.count
    end


end