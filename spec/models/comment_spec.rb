require "rails_helper"

describe Comment do

	context "when complete" do
		it "has a valid factory" do
			expect(build(:comment)).to be_valid
		end
	end

	context "when not complete" do

		it "is invalid without a product" do
			expect(build(:comment, product: nil)).to_not be_valid
		end

		it "is invalid without a comment" do
			expect(build(:comment, body: nil)).to_not be_valid
		end

				it "is invalid without a rating" do
			expect(build(:comment, rating: nil)).to_not be_valid
		end
	end
end