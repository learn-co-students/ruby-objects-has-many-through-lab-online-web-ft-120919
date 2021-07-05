require 'pry'
class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end
    
    # iterates through the Appointments array and returns Appointments that 
    # belong to the patient
    # returns all appointments associated with this Patient
    def appointments
        Appointment.all.select do |appointment|
            # binding.pry
            appointment.patient == self
        end
    end

    # has many doctors through appointments
    # iterates over that patient's Appointments and collects the doctor 
    # that belongs to each Appointment
    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end 
    end

end