class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :count
      t.belongs_to :post, index: true
    end
  end
end
