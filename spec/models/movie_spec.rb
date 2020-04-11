require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "titleとurlが取得出来ること" do
    movie = Movie.new(title: "testtitle", url: "testurl")
    # contentのパラメータ追加
    expect(movie.dis_title).to eq "movie : 正常に入力出来ています。"
  end
end
