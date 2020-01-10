class Doctor
  attr_accessor :name
  @@all = []

  def initialize(n)
    save
    @name = n
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end

  def patients
    appts = self.appointments
    patients_by_doctor = appts.collect {|a| a.patient}
    patients_by_doctor.uniq
  end

end