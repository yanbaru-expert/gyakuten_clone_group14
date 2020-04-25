class CreateLines < ActiveRecord::Migration[6.0]
  def change
    create_table :lines do |t|
      t.string :title
      t.string :genre
      t.text :content
      t.timestamps
    end
  end
end
