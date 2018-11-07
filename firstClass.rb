=begin
class Animal
    attr_reader :colour,:name,:character
    attr_writer :character
    def initialize(name,colour,character)
        @name=name
        @colour=colour
        @character=character
    end
end

class Dog < Animal
    attr_reader :sound
    def initialize(colour,sound)
        super(colour,colour,character)
        @sound=sound
    end
end
firstDog=Dog.new("black","Woof")
=end

class Animal
    attr_reader :colour,:name,:character
    attr_writer :character
    def initialize(name,colour,character)
        @name=name
        @colour=colour
        @character=character
        @saySomethin=saySomethin
    end
end

class Dog
    attr_reader :sound, :colour
    def initialize(colour,sound)
        @sound=sound
    end
end

firstDog=Dog.new("black","Woof")
puts firstDog.sound
