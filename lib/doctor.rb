require "pry"
class Doctor
    attr_accessor :name
  @@all = []
    # has a name,  initializes with a name and adds itself to an array of all doctors
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    # returns all appointments associated with this Doctor
    def appointments
        Appointment.all.select{|appointment|appointment.doctor == self}
    end

    #given a date and a patient, creates a new appointment
    def new_appointment(date, patient)
        appointment = Appointment.new(date, patient, self)
    end

    #has many patients, through appointments
    def patients
        Appointment.all.collect{|appointment|appointment.patient}
        
    end
end