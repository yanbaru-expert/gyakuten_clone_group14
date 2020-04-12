require 'rails_helper'

RSpec.describe Question, type: :model do
  it "titleが空だと無効であること" do
    @ques = Question.new(title: nil)
    expect(@ques.valid?).to eq(false)
  end

  it "detailが空だと無効であること" do
    @ques = Question.new(detail: nil)
    expect(@ques.valid?).to eq(false)
  end

  it "titleとcontentが入力されていれば保存" do
    @ques = Question.new(
        title: "testtitle",
        detail: "testdetail"
    )
    expect(@ques).to be_valid

    if @ques.save
      p "保存されました。"
    else
      p "保存に失敗しました。"
    end
  end
end