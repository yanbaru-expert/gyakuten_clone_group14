class Question < ApplicationRecord
  validates :title, :detail, presence: true
end
