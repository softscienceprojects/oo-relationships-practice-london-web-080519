class Trip
# attr_accessor :listing, :guest
attr_reader :listing, :guest
@@all = []

def initialize(listing:, guest:)
    @guest = guest  
    @listing = listing
    @@all << self
end

    #We don't need the below - the attribute reader above gives us this
    # def listing
    # #returns the listing object for the trip
    #     @listing
    # end
    
    # def guest
    # #returns the guest object for the trip
    #     @guest
    # end

    def self.all
        @@all
    end 

end