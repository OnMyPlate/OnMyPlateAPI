class AddColumnToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :user_bookmarked, :integer
  end
end
