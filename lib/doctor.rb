class Doctor
  attr_accessor :name, :appointments, :patient

  @@all = []
  def initialize (name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(patient, date, self)
    @appointments << appointment
    appointment
  end

  # def appointments
  #   Appointment.new.select do |appointment|
  #     appointment.doctor == self
  #   end
  # end
  #
  # def patients
  #
  # end

end
