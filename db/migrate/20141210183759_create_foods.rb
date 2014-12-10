class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.boolean :bookmarked, default: false
      t.float :avg_rating
      t.text :review, null: false
      t.belongs_to :restaurant, index: true
    end
  end
end
