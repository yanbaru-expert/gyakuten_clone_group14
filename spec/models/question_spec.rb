require 'rails_helper'

RSpec.describe Question, type: :model do
  it "titleとdetailが取得出来ること" do
    ques = Question.new(title: "testtitle", detail: "testdetail")
    # contentのパラメータ追加
    expect(ques.dis_title).to eq "question : 正常に入力出来ています。"
  end
end
