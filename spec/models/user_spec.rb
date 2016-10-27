require "rails_helper"

describe User, :type => :model do

	context "is a valid and complete user" do
		it "has a valid factory" do
			expect(build(:user)).to be_valid
		end
	end

	context "is an invalid or incomplete user" do

		it "is invalid without a valid email address" do
			expect(build(:user, email: "not_an_email")).to_not be_valid
		end

		it "is invalid without an email address" do
			expect(build(:user, email: nil)).to_not be_valid
		end

		it "is invalid without a unique email address" do
			@user = create(:user, email: "user@example.com")
			expect(build(:user, email: "user@example.com")).to_not be_valid
		end

		it "is invalid without a password" do
			expect(build(:user, password: nil)).to_not be_valid
		end

		# currently first and last name are not mandatory fields.
		# it "is invalid without a first_name" do
		# 	expect(build(:user, first_name: nil)).to_not be_valid
		# end

		# it "is invalid without a last_name" do
		# 	expect(build(:user, last_name: nil)).to_not be_valid
		# end
	end
end