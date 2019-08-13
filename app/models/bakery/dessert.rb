class Dessert
    attr_reader :name, :bakery
    @@all = []

    def initialize(name:, bakery:)
        @name = name
        @bakery =bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def bakery
        #should return the bakery object for the dessert
        #what bakery do I belong to?
        @bakery
    end

    def ingredients
        #should return an array of ingredients for the dessert
        Ingredient.all.select {|ingredient| ingredient.dessert == self} # .map{|ingredient| ingredient.name}.uniq
    end


    def calories
        #should return a number totaling all the calories for all the ingredients included in that dessert
        self.ingredients.map {|ingredient| ingredient.calorie_count }.reduce(:+)
    end



end