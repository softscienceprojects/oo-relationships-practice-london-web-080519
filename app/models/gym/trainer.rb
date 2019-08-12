class Trainer
attr_reader :name
@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def self.most_clients
    #should find which trainer has the most clients.
end


end