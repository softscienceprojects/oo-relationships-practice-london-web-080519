class Session
    attr_accessor :date, :location, :client, :trainer
    @@all = []

    def initialize(date:, location:, client:, trainer:)
        @date = date #date is just in place of the 'name' of this instance
        @location = location
        @client = client
        @trainer = trainer
        @@all << self
    end

    def self.all
        @@all
    end


end