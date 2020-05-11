require 'rails_helper'

RSpec.describe Solution, type: :model do
    context "detailが空のとき" do
        it "validationエラーが起きる" do
            answer = FactoryBot.build(:null_data_solution)
            expect(answer.valid?).to eq(false)
        end
    end

    context "detailが入力されていてquestionが紐づいているとき" do
        it "validationエラーが起きない" do
            answer = FactoryBot.build(:solution_with_question)
            expect(answer.valid?).to eq(true)
        end
    end
end