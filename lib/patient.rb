# frozen_string_literal: true

# patient>appointment>doctor
class Patient
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |apps| apps.patient == self }
  end

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
end