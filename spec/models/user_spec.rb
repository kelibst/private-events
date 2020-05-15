require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do 

    it "is valid with valid attributes" do
      expect(User.new(username: "Keli", email: "kbooster17@gmail.com")).to be_valid
    end

    it 'ensures username is present' do
      user = User.new(email: 'kbooster27@gmail.com').save
      expect(user).to eq(false)
    end
    
    it 'ensures email is present' do
      user = User.new(username: 'kbooster27').save
      expect(user).to eq(false)
    end 

    it 'ensures you can create account when everything is valid' do
      user = User.new(username: "keli", email: 'kbooster27@gmail.com').save 
      expect(user).to eq(true)
    end

    it 'ensures that username is of the right length' do
      user = User.new(username: "ki", email: 'kbooster27@gmail.com').save 
      expect(user).to eq(false)
    end

    it 'ensures that email length is of the right length' do
      user = User.new(username: "kilo", email: 'k').save 
      expect(user).to eq(false)
    end
    
  end

  context 'Association tests' do
    it {should have_many(:events)}
    it {should have_many(:invitations)}
    it {should have_many(:attended_events)}
  end
end
