class Client
    attr_reader :name
    attr_accessor :trainer
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        # should take a trainer as argument and assign it to the client
        if self.trainer != trainer
            @trainer = trainer
        else
            "This is already your trainer"
        end
    end

     #Clients initiate a training session with their trainer by choosing a location
     def new_session(date:, location:)
        #currently doesn't account for edge cases, e.g. doesn't have a trainer yet. 
        Session.new(date: date, location: location, client: self, trainer: self.trainer)
     end


end