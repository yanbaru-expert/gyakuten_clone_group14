require 'rails_helper'
RSpec.describe AwsText, type: :model do
  describe "Aws_textモデルのテスト" do

    context "titleが空の場合" do
      let(:aws_text){build(:aws_text, title:"")}
      it "validationエラーが起こる" do
        aws_text.valid?
        expect(aws_text.errors.full_messages).to include "タイトルを入力してください"
      end
    end

    context "contentが空の場合" do
      let(:aws_text){build(:aws_text, content:"")}
      it "validationエラーが起きること" do
        aws_text.valid?
        expect(aws_text.errors.full_messages).to include "内容を入力してください"
      end
    end

    context "titleとcontentが入力されている場合" do
      let(:aws_text){build(:aws_text)}
      it "validationエラーが起きないこと" do
        expect(aws_text).to be_valid
      end
    end

  end
end
