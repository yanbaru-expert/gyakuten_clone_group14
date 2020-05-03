class Review < ApplicationRecord
  belongs_to :question, counter_cashe: true, touch: true
end
