require 'rails_helper'

RSpec.describe Post, type: :model do
    context 'validation tests' do
        let(:attributes) do
        {
            title: "House Cup",
            body: "The winner of the event is Gryffindor"
        }
        end
  
        it "is valid with proper data" do
        expect(Post.new(attributes).valid?).to be_falsey
        end


        it "is invalid without a title" do
            attributes[:title] = nil
            expect(Post.new(attributes).valid?).to be_falsey
        end
        
        it "is invalid without a body" do
            attributes[:body] = nil
            expect(Post.new(attributes).valid?).to be_falsey
        end
    end

end