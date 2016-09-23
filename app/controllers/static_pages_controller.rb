class StaticPagesController < ApplicationController
	def index
	end
end

class StaticPagesController < ApplicationController
	def landing_page
		@featured_product = Product.first
	end
end
