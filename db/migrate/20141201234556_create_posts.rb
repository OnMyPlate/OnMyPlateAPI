class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :rating, null: false
      t.text :review, null: false
      t.belongs_to :user, index: true
      t.belongs_to :food, index: true
    end
  end
end
