class Bakery
    attr_reader :name
    @@all = []

    def initialize(name:)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        #should return an array of desserts the bakery makes
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def ingredients
        #eturn an array of ingredients for the bakery's desserts
        desserts.map {|dessert| dessert.ingredients }.flatten
    end

    def average_calories
        #should return a number totaling the average number of calories for the desserts sold at this bakery
       # getallcalories = ingredients.map{|ingr| ingr. }
       caloriesforeachcake = ingredients.map{|ingredient| ingredient.calorie_count}
       caloriesforeachcake.reduce(:+) / caloriesforeachcake.count.to_f.round(2)
    end

    def shopping_list
        # should return a string of names for ingredients for the bakery
        ingredients.map{|ingredient| ingredient.name }.join(", ")
    end


end