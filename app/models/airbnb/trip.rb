class Trip
attr_accessor :listing, :guest
@@all = []

def initialize(listing:, guest:)
    @guest = guest  
    @listing = listing
    @@all << self
end

    def listing
    #returns the listing object for the trip
        @listing
    end
    
    def guest
    #returns the guest object for the trip
        @guest
    end

    def self.all
        @@all
    end 

end