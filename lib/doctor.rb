class Doctor

    attr_accessor :name, :appointment, :patient

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date) #creates a new appointment & app should know it belongs to the doctor
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients
        Appointment.all.collect do |appointment|
            appointment.patient 
        end
    end

end