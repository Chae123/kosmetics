require  'rails_helper'

describe Product do
	before do

		@product = Product.create!(brand: "Tony Moly", name: "Clean face serum", description: "Face serum based on good stuff.")

		@user = User.create!(email: "example@example.com", password: "123456")

		# To test the average rating we need some comments
		array = [{rating: 1, user: @user, body: "It irriates my skin!"}, {rating: 3, user: @user, body: "Not too bad."}, {rating: 5, user: @user, body: "This is fantastic!"}]
		array.each do |object|
			@product.comments.create!(object)
		end
	end

	context "when the product has comments" do
		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end
	end

	context "when product w/o a name but only description" do
		it "is not valid" do
			expect(Product.new(description: "Vegan sheet mask.")).not_to be_valid
		end
	end
end