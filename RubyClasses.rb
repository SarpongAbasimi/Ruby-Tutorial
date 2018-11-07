class Animal
    attr_reader :name,:character
    attr_accessor :name
    def initialize(name,colour,character)
        @name=name
        @colour=colour
        @character=character
    end

    private
    def get_colour
        return @colour
    end
end

class Dog < Animal
    def initialize(name,colour,character)
        @animal=Animal.new(name,colour,character)
    end

    def get_info
        return @animal.get_colour
    end
end
