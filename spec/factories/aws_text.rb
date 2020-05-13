FactoryBot.define do
    factory :title_nil_text, class: AwsText do
        title {nil}
        content {Faker::String.random}
    end

    factory :content_nil_text, class: AwsText do
        title {Faker::String.random}
        content {nil}
    end

    factory :not_nil_text, class: AwsText do
        title {Faker::String.random}
        content {Faker::String.random}
    end

end