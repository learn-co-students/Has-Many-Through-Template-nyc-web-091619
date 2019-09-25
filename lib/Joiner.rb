#class for Model3 goes here
#Feel free to change the name of the class
class Joiner
    attr_reader :name, :thing1, :thing2

    @@all = []

    def initialize(name, thing1, thing2)
        @name = name
        @thing1 = thing1
        @thing2 = thing2
        @@all << self
    end

    def self.all
        @@all
    end

  
end
