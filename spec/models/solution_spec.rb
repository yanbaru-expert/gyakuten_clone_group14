require 'rails_helper'
RSpec.describe Solution, type: :model do
    describe "Solution_modelのテスト" do
        
        context "detailが空の場合" do
            let(:detail_nil_solution){build(:detail_nil_solution)}
            it "validationエラーが起こる" do
                detail_nil_solution.valid?
                expect(detail_nil_solution.errors.full_messages).to include "詳細を入力してください"
            end
        end
        context "detailaが空でない場合" do
            let(:not_nil_solution){build(:not_nil_solution)}
            it "validationエラーが起こらない" do
                expect(not_nil_solution).to be_valid
            end
        end
    end
end