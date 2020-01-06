class Doctor
  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{ |a|
      a.doctor == self
    }
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    Appointment.all.select{ |ap|
      ap.doctor == self
    }.map{ |ap|
      ap.patient
    }
  end

end
