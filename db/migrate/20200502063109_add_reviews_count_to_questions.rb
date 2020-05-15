class AddReviewsCountToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :reviews_count, :integer, default: 0
  end
end
