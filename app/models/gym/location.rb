class Location
attr_reader :location
@@all = []

    def initialize(location)
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def self.least_clients
        # should find which location has the least clients training there.
        #Trainer.all.min_by{|trainer| trainer.sessions.count <=> trainer.sessions.count }
   
    #  Location.min_by{|location| Trainer.all.select{|trainer| trainer.location == location}.map{|trainer| trainer.client}.uniq.count }
        leastbooked = nil
        if 
            Session.all.map{|session| session.location}.sort_by{|location, occurences| occurences}.first
    end


end
