class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.boolean :bookmarked, default: false
      t.decimal :avg_rating, precision: 2, scale: 1
      t.belongs_to :user, index: true
      t.belongs_to :restaurant, index: true
    end
  end
end
