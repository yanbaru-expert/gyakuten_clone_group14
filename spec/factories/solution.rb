FactoryBot.define do

    factory :solution do
        detail {Faker::String.random}
        question
    end

    factory :question do
        title {Faker::String.random}
        detail {Faker::String.random}
    end
end