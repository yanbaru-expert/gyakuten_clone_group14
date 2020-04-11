class AwsText < ApplicationRecord
  #入力が空の際にはエラー
  validates :title, :content, presence: true

  attr_accessor :title, :content

  def initialize(title:, content:)
    @title = title
    @content = content
  end

  def dis_title
    unless @title.empty? or @content.empty?
      p "aws_text : 正常に入力出来ています。"
    else
      p "aws_text : いずれかが空データです。"
    end
  end
end
