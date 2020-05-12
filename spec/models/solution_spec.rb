require 'rails_helper'
RSpec.describe Solution, type: :model do
    describe "Solution_modelのテスト" do
        context "detailが空の場合" do
            let(:detail_nil_solution){FactoryBot.build(:detail_nil_solution)}
            it "validationエラーが起こる" do
                expect(detail_nil_solution).not_to be_valid
            end
        end
        context "detailaが空でない場合" do
            let(:not_nil_solution){FactoryBot.build(:not_nil_solution)}
            it "validationエラーが起こらない" do
                expect(not_nil_solution).to be_valid
            end
        end
    end
end