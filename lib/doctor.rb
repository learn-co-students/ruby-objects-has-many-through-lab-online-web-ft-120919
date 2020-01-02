require 'pry'

class Doctor
    attr_accessor :name
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self 
    end #init

    def self.all
      @@all 
    end #self.all

    def new_appointment(patient, date)
      #binding.pry
      Appointment.new(date, patient, self)
      #binding.pry
    end 

    def appointments
      Appointment.all.select{|appt| appt.doctor == self}
    end #appointments

    def patients
      self.appointments.collect{|appt| appt.patient}
    end #patients
  end #class