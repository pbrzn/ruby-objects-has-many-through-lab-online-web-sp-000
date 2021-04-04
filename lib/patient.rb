class Patient
  attr_accessor :name
  @@all=[]
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end
  
  def doctors
    doctor_array=[]
    self.appointments.select {|appt| doctor_array << appt.doctor}
    doctor_array
  end
end