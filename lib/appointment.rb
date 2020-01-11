require 'pry'
class Appointment
  
  # attr_accessor :patient, :date, :doctor
   attr_accessor :date, :patient, :doctor

@@all = []

  def initialize(date, patient, doctor)
    @date = date 
    @patient = patient 
    @doctor = doctor
   save 
  end 
  
  def self.all
    @@all
  end 
  
  def save 
     @@all << self
  end 
  
end 
  