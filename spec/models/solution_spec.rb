require 'rails_helper'
RSpec.describe Solution, type: :model do
    describe "Solution_modelのテスト" do
        
        context "detailが空の場合" do
            let(:solution){build(:solution,detail:"")}
            it "validationエラーが起こる" do
                solution.valid?
                expect(solution.errors.full_messages).to include "詳細を入力してください"
            end
        end
        context "detailaが空でない場合" do
            let(:solution){build(:solution)}
            it "validationエラーが起こらない" do
                expect(solution).to be_valid
            end
        end
    end
end