require 'rails_helper'

RSpec.describe Teacher, type: :model do
    let(:attributes) do
        {
            name: "Poppy Pomfrey"
        }
    end
  
    it "is valid with proper data" do
      expect(Teacher.new(attributes).valid?).to be_falsey
    end


    it "is invalid without a name" do
        attributes[:name] = nil
        expect(Teacher.new(attributes).valid?).to be_falsey
    end

end