require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "titleが空だと無効であること" do
    @movie = Movie.new(title: nil)
    expect(@movie.valid?).to eq(false)
  end

  it "urlが空だと無効であること" do
    @movie = Movie.new(url: nil)
    expect(@movie.valid?).to eq(false)
  end

  it "titleとcontentが入力されていれば保存" do
    @movie = Movie.new(
        title: "testtitle",
        url: "testurl"
    )
    expect(@movie).to be_valid
  end
end
