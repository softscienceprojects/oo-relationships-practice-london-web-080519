class Driver
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all #DONE
        @@all
    end

    def passengers #DONE
        #all passengers a driver has 
        rides.map {|ride| ride.passenger}
    end

    def rides #DONE
        #all rides a driver has made
        Ride.all.select {|ride| ride.driver == self }
    end

    def self.mileage_cap(distance) 
        #all drivers who have exceeded that mileage
        #Ride.all.select
    end

end