#class for Model2 goes here
#Feel free to change the name of the class
class Patient
    attr_accesor :name

    def initialize()
      @name = name
      @@all << self
    end
end
