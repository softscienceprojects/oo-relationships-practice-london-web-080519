class Trip
attr_accessor :guest, :listing
@@all = []

def initialize(guest, listing)
    @guest = guest  
    @listing = listing
    @@all << self
end

    def listing
    #returns the listing object for the trip
    end
    
    def guest
    #returns the guest object for the trip
    end

    def self.all
        @@all
    end 

end