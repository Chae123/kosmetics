class ChangeColumnName < ActiveRecord::Migration[5.0]
	def change
		rename_column :products, :price, :price_in_cents
	end
end
