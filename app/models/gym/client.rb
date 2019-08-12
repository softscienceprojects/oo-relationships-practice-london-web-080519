class Client
    attr_reader :name, :trainer
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
        trainer.clients << self
    end



end