FactoryBot.define do

    factory :movie do
        title {Faker::String.random}
        url {Faker::String.random}
    end

end