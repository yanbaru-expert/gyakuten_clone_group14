class Question < ApplicationRecord
  #入力が空の際にはエラー
  validates :title, :detail, presence: true

end
