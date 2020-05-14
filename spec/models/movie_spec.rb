require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "Movie_modelのテスト" do
    context "titleが空の場合" do
      let(:movie){build(:movie,title:"")}
      it "validationエラーが起こる" do
        movie.valid?
        expect(movie.errors.full_messages).to include "タイトルを入力してください" 
      end
    end

    context "urlが空の場合" do
      let(:movie){build(:movie,url: "")}
      it "validationエラーが起こる" do
        movie.valid?
        expect(movie.errors.full_messages).to include "urlを入力してください"
      end
    end

    context "titleとurlが入力されている場合"
    let(:movie){build(:movie)}
    it "validationエラーが起こらない" do
      expect(movie).to be_valid
    end
  end
end
