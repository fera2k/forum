FactoryBot.define do
  factory :user do
    pw = Faker::Internet.password
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password pw
    password_confirmation  pw
  end
end
