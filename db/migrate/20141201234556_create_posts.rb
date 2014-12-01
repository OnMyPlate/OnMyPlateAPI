class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.boolean :bookmarked
      t.integer :rating, null: false
      t.text :review, null: false
      t.string :image, null: false
      t.belongs_to :user, index: true
    end
  end
end
