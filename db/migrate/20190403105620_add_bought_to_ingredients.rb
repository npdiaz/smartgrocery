class AddBoughtToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :bought, :boolean
  end
end
