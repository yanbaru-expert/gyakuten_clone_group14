require 'rails_helper'

RSpec.describe AwsText, type: :model do
  it "titleとcontentが取得出来ること" do
    aws = AwsText.new(title: "testtitle", content: "testcontent")
    # contentのパラメータ追加
    expect(aws.dis_title).to eq "aws_text : 正常に入力出来ています。"
  end
end
