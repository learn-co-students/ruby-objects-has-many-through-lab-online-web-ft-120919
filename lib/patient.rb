class Patient

  attr_accessor :name, :appointment, :doctor
  
  @@all = []

  def initialize(name)
    @name = name
    @appointment = []
    @doctor = doctor
    @@all << self
  end
  
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end
  
  

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
  
  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
end