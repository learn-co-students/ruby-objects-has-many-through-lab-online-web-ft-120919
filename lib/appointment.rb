require "pry"
class Appointment
  attr_reader :patient, :doctor, :date
  @@all = []
  def initialize(date, patient, doctor)
    # binding.pry
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
    # binding.pry
  end
  def self.all
    @@all
  end

end
