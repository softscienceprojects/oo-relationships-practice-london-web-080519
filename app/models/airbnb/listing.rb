class Listing
attr_reader :city, :name
@@all = []


def initialize(city)
    @city = city
   @@all << self
end

    def guests
    #returns an array of all guests who have stayed at a listing
        Trip.all.select 
    end

    def trips
    #returns an array of all trips at a listing
    end

    def trip_count
    #returns the number of trips that have been taken to that listing
    end

    def self.all
    #returns an array of all listings
    end
    
    def self.find_all_by_city(city)
    #takes an argument of a city name (as a string) and returns all the listings for that city
    end
    
    def self.most_popular
    #finds the listing that has had the most trips
    end
end