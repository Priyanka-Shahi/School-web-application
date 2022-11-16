require 'rails_helper'

RSpec.describe Student, type: :model do
    describe 'associations' do
      it { should belong_to(:house) }
    end
  
    describe 'validations' do
      it { should validate_presence_of(:name) }
    end
end