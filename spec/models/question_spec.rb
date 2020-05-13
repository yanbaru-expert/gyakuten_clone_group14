require 'rails_helper'

RSpec.describe Question, type: :model do
  describe "question_modelのテスト" do 
    context "titleが空の場合" do
    let(:title_nil_question){build(:title_nil_question)}
      it "validationエラーが起こる" do
        title_nil_question.valid?
        expect(title_nil_question.errors.full_messages).to include "タイトルを入力してください"
      end
    end

    context "detailが空の場合" do
      let(:detail_nil_question){build(:detail_nil_question)}
      it "validationエラーが起こる" do
        detail_nil_question.valid?
        expect(detail_nil_question.errors.full_messages).to include "詳細を入力してください"
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