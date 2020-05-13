require 'rails_helper'
RSpec.describe AwsText, type: :model do
  describe "Aws_textモデルのテスト" do

    context "titleが空の場合" do
      let(:title_nil_text){build(:title_nil_text)}
      it "validationエラーが起こる" do
        title_nil_text.valid?
        expect(title_nil_text.errors.full_messages).to include "タイトルを入力してください"
      end
    end

    context "contentが空の場合" do
      let(:content_nil_text){build(:content_nil_text)}
      it "validationエラーが起きること" do
        content_nil_text.valid?
        expect(content_nil_text.errors.full_messages).to include "内容を入力してください"
      end
    end

    context "titleとcontentが入力されている場合" do
      let(:not_nil_text){build(:not_nil_text)}
      it "validationエラーが起きないこと" do
        expect(not_nil_text).to be_valid
      end
    end

  end
end
