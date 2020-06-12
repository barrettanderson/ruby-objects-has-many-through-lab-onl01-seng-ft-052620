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
    Appointment.new(patient, date, self)
  end



end
