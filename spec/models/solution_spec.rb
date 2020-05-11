require 'rails_helper'

RSpec.describe Solution, type: :model do
    let(:null_data_solution) { Solution.new(detail: "") }
    context "detailが空のとき" do
        it "validationエラーが起きる" do
            expect(null_data_solution).not_to be_valid
        end
    end

    let!(:question) {Question.create(title: "test_title",detail:"test_detail")}
    let!(:solution_with_question) {Solution.new(detail: "test_detail",question_id: question.id)}
    context "detailが入力されていてquestionが紐づいているとき" do
        it "validationエラーが起きない" do
            expect(solution_with_question).to be_valid
        end
    end
end