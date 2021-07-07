class Appointment
  attr_accessor :doctor, :date, :patient
  @@all = []
  def initialize(time,sick, doc)
    @date=time
    @patient=sick
    @doctor =doc
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end