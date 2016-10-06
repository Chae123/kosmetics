class Product < ApplicationRecord
	has_many :comments

	def highest_rating_comment
		comments.rating_desc.first
	end

end

