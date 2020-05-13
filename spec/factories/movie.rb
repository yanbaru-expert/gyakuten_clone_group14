FactoryBot.define do
    factory :title_nil_movie, class: Movie do
        title {nil}
        url {Faker::String.random}
    end

    factory :url_nil_movie, class: Movie do
        title {Faker::String.random}
        url {nil}
    end

    factory :not_nil_movie, class: Movie do
        title {Faker::String.random}
        url {Faker::String.random}
    end

end