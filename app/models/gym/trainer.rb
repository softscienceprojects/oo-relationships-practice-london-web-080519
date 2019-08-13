class Trainer
attr_reader :name
attr_accessor :clients, :locations, :sessions
@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_clients
        #should find which trainer has the most clients
        #out of all the trainer instances, which has the most client instances that call this instance your trainer?
        Client.all.map{|client| client.trainer}.sort_by{|trainer, occurences| occurences}.last
    end

   

end