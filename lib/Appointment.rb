#class for Model3 goes here
#Feel free to change the name of the class
class Appointment
  attr_accesor :date, :time, :doctor, :patient

  def initialize()
    @date = date
    @time = time
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  
end
