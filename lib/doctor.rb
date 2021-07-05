require 'pry'

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

    # The Doctor class needs an instance method, #new_appointment, that takes 
    # in a an instance of the Patient class and a date, and creates a new 
    # Appointment. That Appointment should know that it belongs to the doctor
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    # returns all appointments associated with this Doctor
    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    # has many patients, through appointments
    # iterate through #appointments to get all patients in a new array
    def patients
        appointments.map do |appointment|
            # binding.pry
            appointment.patient
        end
    end

end