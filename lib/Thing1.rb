#class for Model1 goes here
#Feel free to change the name of the class
class Thing1

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def all_my_joiners
        Joiner.all.select {|joiner| joiner.thing1 == self}
    end

    def all_my_thing2s
        all_my_joiners.map {|joiner| joiner.thing1}
    end


    def self.all
        @@all
    end

end
