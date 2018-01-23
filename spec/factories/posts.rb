FactoryBot.define do
  factory :post do
    category
    association :author, factory: :user
    title { Faker::Lorem.sentence }
    post_body { Faker::Lorem.paragraph }
    created_at { Faker::Time.between(10.days.ago, 5.days.ago, :all) }
    updated_at { Faker::Time.between(4.days.ago, Date.today, :all) }
  end
end
