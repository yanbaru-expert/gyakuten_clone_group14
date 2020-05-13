FactoryBot.define do
    factory :detail_nil_solution, class: Solution do
        detail {""}
        question
    end

    factory :not_nil_solution, class: Solution do
        detail {Faker::String.random}
        question
    end

    factory :question do
        title {Faker::String.random}
        detail {Faker::String.random}
    end
end