class Patient

    attr_accessor :name
    @@all = []
    #new --  initializes with a name
    def initialize(name)
        @name = name
        @@all << self
    end
    #knows about all patients
    def self.all
        @@all
    end

    #given a doctor and date, creates a new appointment belonging to that patient
    def new_appointment(doctor, date)
        appointment = Appointment.new(self,date, doctor)
    end
   # returns all appointments associated with this Patient
    def appointments
        
       Appointment.all.select{|appointment|appointment.patient == self}

    end
   #has many doctors through appointments
    def doctors
       # binding.pry
        appointments.collect{|appointment|appointment.doctor}
    end
end