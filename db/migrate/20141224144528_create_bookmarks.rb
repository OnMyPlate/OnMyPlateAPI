class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.boolean :bookmarked
      t.belongs_to :user, index: true
      t.belongs_to :food, index: true
    end
  end
end
