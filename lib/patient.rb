class Patient
  attr_reader :name
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (doctor, date)
    date = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|date| date.patient == self}
  end

  def doctors
    doctor_array = appointments.collect {|date| date.doctor}
    doctor_array.uniq
  end
end
