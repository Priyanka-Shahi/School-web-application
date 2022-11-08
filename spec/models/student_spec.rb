require 'rails_helper'

RSpec.describe Student, type: :model do
    let(:attributes) do
        {
            name: "Harry Potter"
        }
    end
  
    it "is valid with proper data" do
      expect(Student.new(attributes).valid?).to be_falsey
    end


    it "is invalid without a name" do
        attributes[:name] = nil
        expect(Student.new(attributes).valid?).to be_falsey
    end

end