class RenameContentsColumnToContent < ActiveRecord::Migration[6.0]
  def change
    rename_column :lines, :contents, :content
  end
end
