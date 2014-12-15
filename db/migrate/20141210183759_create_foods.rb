class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.boolean :bookmarked, default: false
      t.string :restaurant_name, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.decimal :avg_rating, precision: 2, scale: 1
      t.belongs_to :user, index: true
    end
  end
end
