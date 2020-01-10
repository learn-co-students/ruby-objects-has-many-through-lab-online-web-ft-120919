class Patient

  @@all = []
  attr_accessor  :name

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end

  def new_appointment(doctor, date)
    Appointment.new( date , self,  doctor)
  end


  def appointments
    Appointment.all.select {|a| a.patient == self}
  end

  def doctors
    appts = self.appointments
    docs = appts.collect {|a| a.doctor}
    docs.uniq
  end
end