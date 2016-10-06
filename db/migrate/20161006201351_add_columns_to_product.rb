class AddColumnsToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :size, :text
    add_column :products, :how_to, :text
    add_column :products, :ingredients, :text
  end
end
