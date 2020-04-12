require 'rails_helper'

RSpec.describe AwsText, type: :model do
  it "titleが空だと無効であること" do
    @aws = AwsText.new(title: nil)
    expect(@aws.valid?).to eq(false)
  end

  it "contentが空だと無効であること" do
    @aws = AwsText.new(content: nil)
    expect(@aws.valid?).to eq(false)
  end

  it "titleとcontentが入力されていれば保存" do
    @aws = AwsText.new(
        title: "testtitle",
        content: "testcontent"
    )
    expect(@aws).to be_valid
  end
end
