require 'rails_helper'

RSpec.describe Question, type: :model do
  describe "question_modelのテスト" do 
    context "titleが空の場合" do
    let(:question){build(:question,title:"")}
      it "validationエラーが起こる" do
        question.valid?
        expect(question.errors.full_messages).to include "タイトルを入力してください"
      end
    end

    context "detailが空の場合" do
      let(:question){build(:question,detail:"")}
      it "validationエラーが起こる" do
        question.valid?
        expect(question.errors.full_messages).to include "詳細を入力してください"
      end
    end

    context "questionが空の場合" do
      let(:question){build(:question)}
      it "titleとcontentが入力されていれば保存" do
        expect(question).to be_valid
      end
    end
  end
end