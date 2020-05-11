require 'rails_helper'

RSpec.describe Solution, type: :model do
    it "detailが空だと無効であること" do
        answer = FactoryBot.build(:null_data_solution)
        expect(answer.valid?).to eq(false)
    end

    

    it "detailが入力されていてquestionが紐づいていれば保存できること" do
        answer = FactoryBot.build(:solution_with_question)
        expect(answer.valid?).to eq(true)
    end
end