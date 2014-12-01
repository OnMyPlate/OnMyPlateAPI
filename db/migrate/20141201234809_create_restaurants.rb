class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.belongs_to :post, index: true
    end
  end
end
