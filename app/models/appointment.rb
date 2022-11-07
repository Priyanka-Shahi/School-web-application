class Appointment < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  
  validates :appointment_date, presence: true
  
end
