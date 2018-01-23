FactoryBot.define do
  factory :comment do
    association :post
    association :author, factory: :user
    comment_body { Faker::Lorem.paragraph }
  end
end
