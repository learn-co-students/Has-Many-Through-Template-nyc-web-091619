#class for Model1 goes here
#Feel free to change the name of the class
class Doctor
    attr_accesor :name :speciality, :school

    def initialize()
      @name = name
      @speciality = speciality
      @school = school
      @@all << self
    end
end
