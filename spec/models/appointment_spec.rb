require 'rails_helper'

RSpec.describe Appointment, type: :model do
    let(:attributes) do
        {
            appointment_date: "2022 - 12- 22",
        }
    end
  
    it "is valid with proper data" do
      expect(Appointment.new(attributes).valid?).to be_falsey
    end


    it "is invalid without appointment date" do
        attributes[:appointment_date] = nil
        expect(Appointment.new(attributes).valid?).to be_falsey
    end
    
end
