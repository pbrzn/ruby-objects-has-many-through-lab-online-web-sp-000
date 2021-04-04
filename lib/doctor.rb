class Doctor
  attr_accessor :name
  @@all=[]
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def patients
    patient_array=[]
    self.appointments.select {|patient| patient_array << patient}
    patient_array
  end
end
    