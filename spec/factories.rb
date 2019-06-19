# This will guess the User class
FactoryBot.define do
    factory :user do
      name { "Sérgio" }
      sequence(:email) { |i| "asergioalvesc#{i}@gmail.com" }
      age  { 20 }
    end
end