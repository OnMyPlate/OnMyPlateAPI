class CreateFoodImages < ActiveRecord::Migration
  def change
    create_table :food_images do |t|
      t.string :image_url
      t.belongs_to :post, index: true
    end
  end
end
