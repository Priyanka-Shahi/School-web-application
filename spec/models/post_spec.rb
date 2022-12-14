require 'rails_helper'

RSpec.describe Post, type: :model do
    describe 'associations' do
      it { should belong_to(:admin_user) }
    end
  
    describe 'validations' do
      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:body) }
    end
  end