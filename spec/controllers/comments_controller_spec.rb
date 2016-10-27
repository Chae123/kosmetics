require "rails_helper"

describe CommentsController, :type => :controller do
	before do
		@product = FactoryGirl.create(:product)
		@comment = FactoryGirl.build(:comment).attributes
	end

	context "with valid params" do

		before do
			@user = create(:user)
			sign_in @user
		end

		it "creates a new comment" do
			expect{
				post :create, { product_id: @product.id, comment: @comment }
			}.to change(Comment, :count).by(1)
		end

		context "delete comment" do

			before do
				@user = create(:user)
				@created_comment = create(:comment)
				sign_in @user
			end

			it "deletes a comment" do
				expect{
					delete :destroy, { product_id: @product.id, id: @created_comment.id }
				}.to change(Comment, :count).by(-1)
			end
		end
	end
end