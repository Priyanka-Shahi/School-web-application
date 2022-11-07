class Appointment < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  
  validates :appointment_date, presence: true
  validate :appointment_date_cannot_be_in_the_past

  def appointment_date_cannot_be_in_the_past
    if appointment_date.present? && appointment_date < Date.today
      errors.add(:appointment_date, "can't be in the past")
    end
  end
end

