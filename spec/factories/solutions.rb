FactoryBot.define do
    factory :null_data_solution, class: "solution" do
      detail { "" }
      question
    end

    factory :solution_with_question, class: Solution do
        detail {"test_detail"}
        question
    end

    factory :question, class: Question do
        title {"test_title"}
        detail {"test_detail"}
    end

  end