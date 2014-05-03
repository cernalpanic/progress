class AddBookIdToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :book_id, :integer
  end
end
