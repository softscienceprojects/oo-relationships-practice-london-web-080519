class Guest
attr_reader :name
attr_accessor :trips_taken
@@all = []

def initialize(name)
    @name = name
    @trips_taken = 0
    @@all << self
end

    def take_trip(listing) #DONE
        #passing in the name of a listing to take a trip
        new_trip = Trip.new(listing: listing, guest: self)
        self.trips_taken += 1 #Will this cause problems later? This seems to satisfy the tests.
        new_trip
    end

    def listings #DONE (kind of -- see note below)
        # returns an array of all listings a guest has stayed at
        trips.map {|trip| trip.listing }
        #returns an array of the instances - not sure how to get the variable name? Is that needed?
    end

    def trips #DONE
    #returns an array of all trips a guest has made
        Trip.all.select {|trip| trip.guest == self}
    end
    
    def trip_count  #DONE
    #returns the number of trips a guest has taken
        trips.length
    end
    
    def self.all  #DONE
        #returns an array of all guests
        @@all
    end
    
    def self.pro_traveller  #DONE
    #returns an array of all guests who have made over 1 trip
       self.all.select {|guest| guest.trips_taken > 1}
    end
    
    def self.find_all_by_name(name) #DONE
    #takes an argument of a name (as a string), returns the all guests with that name
        self.all.find {|guest| guest.name == name}
    end

end