class Question < ApplicationRecord
  has_many :solutions
  has_many :reviews
  validates :title, :detail, presence: true
end
