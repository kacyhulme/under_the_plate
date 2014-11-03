require 'rails_helper'

describe User do

  it "requires an email" do
    user = User.new(name: "Greta", email: "")

    expect(user.valid?).to be_falsey
    expect(user.errors[:email].any?).to be true
  end

  it "requires a password" do
    user = User.new(name: "Greta", email: "greta@g.com", password:"")

    expect(user.valid?).to be_falsey
    expect(user.errors[:password].any?).to be true
  end

  context 'determines if user is admin or not' do 

    it 'labels user as admin' do 
      user = User.new(name: "Greta", email: "greta@g.com", password:"password", admin: true)

      expect(user.admin).to be true
    end

    it 'labels user as non_admin' do 
      user = User.new(name: "Greta", email: "greta@g.com", password:"password", admin: false)

      expect(user.admin).to be false
    end
  end
end
