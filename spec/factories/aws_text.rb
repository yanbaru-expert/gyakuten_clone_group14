FactoryBot.define do

    factory :aws_text do
        title {Faker::String.random}
        content {Faker::String.random}
    end

end