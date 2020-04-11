class Movie < ApplicationRecord
  #入力が空の際にはエラー
  validates :title, :url, presence: true

end
