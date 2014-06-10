require 'spec_helper'

describe "A User" do 
	it "requires an email" do 
		user = User.new(email: "")

		expect(user.valid?).to be_false
		expect(user.errors[:email].any?).to be_true
	end

	it "requires a user password" 
end 
