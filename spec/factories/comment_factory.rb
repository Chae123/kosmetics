FactoryGirl.define do

  factory :comment do
    rating { rand(1..5) }
    user
    body "I am giving it following reviews in stars:"

    factory :invalid_comment do
      body nil
    end

  end
end