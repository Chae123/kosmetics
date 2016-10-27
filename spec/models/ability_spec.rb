require "cancan/matchers"
require "rails_helper"

describe Ability, :type => :model do
	subject(:ability){ Ability.new(user) }
	let(:user) { nil }

	context "admin can manage all" do
		let (:user) { FactoryGirl.build(:admin) }

		it { should be_able_to(:manage, :all) }
	end

	context "user cannot add product" do
		it { should_not be_able_to(:create, Product) }
	end
	
	context "user can add comment" do
		it { should be_able_to(:create, Comment) }
	end

	context "user cannot destroy product" do
		it { should_not be_able_to(:destroy, Product) }
	end

	context "user cannot edit product" do
		it { should_not be_able_to(:edit, Product) }
	end

	context "user cannot update product" do
		it { should_not be_able_to(:update, Product) }
	end
end