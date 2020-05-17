class Movie < ApplicationRecord
  validates :title, :url, presence: true
  acts_as_taggable_on :tags
end
