class Question < ApplicationRecord
  #入力が空の際にはエラー
  validates :title, :detail, presence: true

  attr_accessor :title, :detail

  def initialize(title:, detail:)
    @title = title
    @detail = detail
  end

  def dis_title
    unless @title.empty? or @detail.empty?
      p "question : 正常に入力出来ています。"
    else
      p "question : いずれかが空データです。"
    end
  end
end
