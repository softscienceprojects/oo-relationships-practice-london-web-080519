class Trainer
attr_reader :name
attr_accessor :clients
@@all = []

def initialize(name)
    @name = name
    @clients = []
    @@all << self
end

def self.all
    @@all
end

def self.most_clients
    #should find which trainer has the most clients.
    self.all.max_by{|trainer| trainer.clients.count <=> trainer.clients.count }
end

end