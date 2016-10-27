FactoryGirl.define do
	sequence(:brand) { |n| "brand #{n}" }
	sequence(:name) { |n| "name #{n}" }

	factory :product do
	brand
	name
	description "Awesome skin care product"
	image_url "products/sample_image.jpg"
	price_in_cents 5000

		factory :invalid_product do
			name nil
		end
	end
end