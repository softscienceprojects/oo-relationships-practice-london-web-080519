class Driver
    attr_reader :name
    # attr_accessor :distance_driven
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
        ## I've written the below with the assumption instrucitons want over mileage for an individual ride,
        ## didn't specify over the mileage when adding all their rides together
        
        # self.all.select {|driver| driver.rides } #couldn't work out how to do it from here

        Ride.all.select{|ride| ride.distance > distance}.map{|overdistance| overdistance.driver }.uniq
        #uniq just to omit any drivers who have done this more than once. Leave for their individual rides gone over
    end

end