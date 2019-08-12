class Passenger
    attr_reader :name
   # attr_accessor :distance_travelled
    @@all = []

    def initialize(name)
        @name = name
       # @distance_travelled = 0
        @@all << self
    end

    def self.all
        @@all
    end

    def take_ride(distance, driver) #DONE
        Ride.new(distance, self, driver)
    end

    def drivers #DONE
        #all drivers ridden with
        rides.map {|ride| ride.driver }
    end

    def rides #DONE
        #all rides been on 
        Ride.all.select {|ride| ride.passenger == self}
    end

    def total_distance #DONE
        #distance travelled
        arrayofdistances = rides.map {|ride| ride.distance}
        arrayofdistances.reduce(:+)
    end

    def self.premium members
        #members travelled over >100

    end


end