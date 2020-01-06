class Doctor
  attr_reader :name
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (patient, date)
    date = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|date| date.doctor == self}
  end

  def patients
    patient_array = appointments.collect {|date| date.patient}
    patient_array.uniq
  end

end
