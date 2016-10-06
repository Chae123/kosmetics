class RemoveColorFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :color, :string
  end
end
