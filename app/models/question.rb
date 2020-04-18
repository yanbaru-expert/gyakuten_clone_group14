class Question < ApplicationRecord
  has_many :solutions
  validates :title, :detail, presence: true
end
