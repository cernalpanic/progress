class RenameBooksBookmarksTable < ActiveRecord::Migration
  def change
    rename_table(:books_bookmarks, :bookmarks_books)
  end
end
