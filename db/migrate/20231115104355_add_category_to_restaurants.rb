class AddCategoryToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :category, :text
  end
end
