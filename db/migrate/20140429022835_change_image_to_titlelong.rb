class ChangeImageToTitlelong < ActiveRecord::Migration
  def change
    rename_column :books, :image, :title_long
  end
end
