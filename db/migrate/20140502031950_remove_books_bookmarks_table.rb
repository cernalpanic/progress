class RemoveBooksBookmarksTable < ActiveRecord::Migration
  def change
    drop_table :bookmarks_books
  end
end
