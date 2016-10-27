# FactoryGirl.define do
# 	factory :user do |u|
# 		u.sequence(:email) { |n| "email1#{n}@example.com" }
# 		u.sequence(:password) { |n| "#{n}asdfg" }
# 		u.sequence(:first_name) { |n| "Jay#{n}" }
# 		u.sequence(:last_name) { |n| "Doe#{n}" }
# 		admin false
# 	end
# end

FactoryGirl.define do
	sequence(:email) { |n| "user18#{n}@example.com" }

	factory :user do
		email
		password "123456"
		password_confirmation { |u| u.password }
		admin false
		first_name "Jay"
		last_name "Doe"
	end

	factory :invalid_user do
		first_name nil
	end

	factory :admin, class: User do
		email
		password "654321"
		password_confirmation { |u| u.password }
		admin true
		first_name "Admin"
		last_name "User"
	end
end