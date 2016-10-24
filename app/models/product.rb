class Product < ApplicationRecord
	has_many :comments
	belongs_to :category
	validates :name, presence: true

	def highest_rating_comment
		comments.rating_desc.first
	end

	def lowest_rating_comment
		comments.rating_asc.first
	end

	def average_rating
		comments.average(:rating).to_f
	end
end

