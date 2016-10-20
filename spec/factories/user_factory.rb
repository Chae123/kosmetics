FactoryGirl.define do
	factory :user do |u|
		u.sequence(:email) { |n| "email1#{n}@example.com" }
		u.sequence(:password) { |n| "#{n}asdfg" }
		u.sequence(:first_name) { |n| "Jay#{n}" }
		u.sequence(:last_name) { |n| "Doe#{n}" }
		admin false
	end
end