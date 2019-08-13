class Ingredient
    attr_reader :name, :dessert, :calorie_count
    @@all = []

    def initialize(name:, dessert:, calorie_count:)
        @name = name
        @dessert = dessert
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert  #what dessert do I belong to?
        @dessert
    end

    def bakery
        #should return the bakery object for the bakery that uses that ingredient
        dessert.bakery
    end

    def self.find_all_by_name(ingredient)
#         should take a string argument return an array of all ingredients that include that string in their name
# .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
# make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
    end

end