class ChangeColumnBoughtDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :ingredients, :bought, :boolean, default: false
  end
end
