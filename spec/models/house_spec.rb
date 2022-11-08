require 'rails_helper'

RSpec.describe House, type: :model do
  
    it "is valid" do
      house = House.new(name: "Hufflepuff", points: 1000)
      expect(house).to be_valid
    end
    
    it "is invalid without a name" do
        house = House.new(points: 1000)
        expect(house).to be_invalid
    end

    it "is invalid without the points" do
      house = House.new(name: "Hufflepuff")
      expect(house).to be_invalid
    end
    
    it "is invalid if the points are not integer" do
        house = House.new(name: "Hufflepuff", points: 'thousand')
        expect(house).to be_invalid
    end
  end