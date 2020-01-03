class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end #init

  def self.all
    @@all
  end #self.all

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end #new_appointment

  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end #appointments

  def doctors
    self.appointments.collect{|appt| appt.doctor}
  end

end #class 