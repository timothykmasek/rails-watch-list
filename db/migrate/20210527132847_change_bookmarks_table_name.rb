class ChangeBookmarksTableName < ActiveRecord::Migration[6.0]
  def change
    rename_table :bookmarks_tables, :bookmarks
  end
end
