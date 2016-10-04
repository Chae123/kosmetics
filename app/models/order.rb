class Order < ApplicationRecord
	belongs_to :product
	belongs_to :user
end

class Product < ApplicationRecord
	has_many :orders
end