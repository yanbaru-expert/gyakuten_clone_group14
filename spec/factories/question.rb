FactoryBot.define do
    
    factory :title_nil_question, class: Question do
        title {nil}
        detail {Faker::String.random}
    end

    factory :detail_nil_question, class: Question do
        title {Faker::String.random}
        detail {nil}
    end

end