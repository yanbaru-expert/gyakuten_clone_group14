class AwsText < ApplicationRecord
  #入力が空の際にはエラー
  validates :title, :content, presence: true

end
