class RenameContentColumnToContents < ActiveRecord::Migration[6.0]
  def change
    rename_column :lines, :content, :contents
  end
end
