require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "Movie_modelのテスト" do
    context "titleが空の場合" do
      let(:title_nil_movie){build(:title_nil_movie)}
      it "validationエラーが起こる" do
        title_nil_movie.valid?
        expect(title_nil_movie.errors.full_messages).to include "タイトルを入力してください" 
      end
    end

    context "urlが空の場合" do
      let(:url_nil_movie){build(:url_nil_movie)}
      it "validationエラーが起こる" do
        url_nil_movie.valid?
        expect(url_nil_movie.errors.full_messages).to include "urlを入力してください"
      end
    end

    context "titleとurlが入力されている場合"
    let(:not_nil_movie){build(:not_nil_movie)}
    it "validationエラーが起こらない" do
      expect(not_nil_movie).to be_valid
    end
  end
end
