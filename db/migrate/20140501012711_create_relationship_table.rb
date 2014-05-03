class CreateRelationshipTable < ActiveRecord::Migration
  def change
    create_table :books_progress, id: false do |t|
      t.belongs_to :book
      t.belongs_to :progres
    end
  end
end
