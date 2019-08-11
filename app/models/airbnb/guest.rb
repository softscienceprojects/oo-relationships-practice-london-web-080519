class Guest
attr_reader :name
@@all = []

def initialize(name)
    @name = name
    @@all << self
end

    def take_trip(listing)
        #passing in the name of a listing to take a trip
        new_trip = Trip.new(listing: listing, guest: self)
        new_trip
    end

    def listings
    # returns an array of all listings a guest has stayed at
    end

    def trips
    #returns an array of all trips a guest has made
    end
    
    def trip_count
    #returns the number of trips a guest has taken
    end
    
    def self.all
        #returns an array of all guests
        @@all
    end
    
    def self.pro_traveller
    #returns an array of all guests who have made over 1 trip
    end
    
    def self.find_all_by_name(name)
    #takes an argument of a name (as a string), returns the all guests with that name
    end

end