class AddColumnLines < ActiveRecord::Migration[6.0]
  def change
    add_column :lines, :genre, :string
  end
end
