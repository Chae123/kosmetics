class ChangePriceTypeInProducts < ActiveRecord::Migration[5.0]
  def self.up
  	change_column :products, :price, :integer
  end

  def self.down
  	change_column :products, :price, :float
  end
end
