class CreateBookmarksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks_tables do |t|
      t.string :comment
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
    end
  end
end
