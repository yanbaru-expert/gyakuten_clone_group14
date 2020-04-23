class AddCategolyToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :category, :string
    add_index :movies, :category
  end
end
