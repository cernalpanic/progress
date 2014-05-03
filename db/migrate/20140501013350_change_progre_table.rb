class ChangeProgreTable < ActiveRecord::Migration
  def change
    drop_table :books_progress
  end
end
