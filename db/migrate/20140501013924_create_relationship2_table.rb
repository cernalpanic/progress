class CreateRelationship2Table < ActiveRecord::Migration
  def change
    create_table :books_bookmarks, id: false do |t|
      t.belongs_to :bookmark
      t.belongs_to :book
    end
  end
end
