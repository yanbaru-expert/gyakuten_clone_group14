class AddGenreToTexts < ActiveRecord::Migration[6.0]
  def change
    add_column :texts, :genre, :string, after: :content
  end
end
