require 'spec_helper'

describe "A user" do 
	it "requires an email" do 
		user = User.new(email: "")

		expect(user.valid?).to be_false
		expect(user.errors[:email].any?).to be_true
	end

	it "requires a password" do
		user = User.new(password:"")

		expect(user.valid?).to be_false
		expect(user.errors[:password].any?).to be_tur
	end
end 
