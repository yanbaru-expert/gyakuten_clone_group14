class Movie < ApplicationRecord
  #入力が空の際にはエラー
  validates :title, :url, presence: true

  attr_accessor :title, :url

  def initialize(title:, url:)
    @title = title
    @url = url
  end

  def dis_title
    unless @title.empty? or @url.empty?
      p "movie : 正常に入力出来ています。"
    else
      p "movie : いずれかが空データです。"
    end
  end
end
