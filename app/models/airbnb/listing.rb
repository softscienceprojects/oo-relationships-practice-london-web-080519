class Listing
attr_reader :city, :name
@@all = []


def initialize(city)
    @city = city
    @@all << self
end

    def trips #DONE
    #returns an array of all trips at a listing
        Trip.all.select {|trip| trip.listing == self }
    end

    def guests #DONE
    #returns an array of all guests who have stayed at a listing
        #Trip.all - add .name to  returns the name
        trips.map {|trip| trip.guest }
    end

    def trip_count #DONE
    #returns the number of trips that have been taken to that listing
        trips.length
    end

    def self.all #DONE
        #returns an array of all listings
        @@all
    end
    
    def self.find_all_by_city(city) #DONE
    #takes an argument of a city name (as a string) and returns all the listings for that city
        self.all.select {|listing| listing.city == city}
    end
    
    def self.most_popular #DONE
    #finds the listing that has had the most trips
        mostpopularlisting = nil
        checklisting = self.all.max_by {|listing| listing.trip_count }
        
        if checklisting.trip_count >= 1
            mostpopularlisting = checklisting
        end
       mostpopularlisting
    end
end