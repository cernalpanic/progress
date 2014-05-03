class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :chapters_total
      t.integer :chapters_completed
      t.string :notes
      t.string :url
      t.string :title
      t.integer :page_number
      t.string :git_repo

      t.timestamps
    end
  end
end
