class Patient

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def appointments
        Appointment.all.select { |a| a.patient == self} 
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def self.all
        @@all
    end

    def doctors #?? huh what is happening here
        appointments.map do |a| 
            a.doctor
        end
    end
end