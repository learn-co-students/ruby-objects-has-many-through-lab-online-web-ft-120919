require "pry"
class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date, patient)
    Appointment.new(patient, date, self)
  end
  
  def appointments
    Appointment.all.select {|appointments| appointments.doctor == self}
  end
  
  def patients
    appointments.collect {|doctor| doctor.patient}
  end
    
end 