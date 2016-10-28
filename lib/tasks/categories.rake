namespace :categories do
	desc 'Add default Categories'
	task initial: :environment do
		Category.create(name: "Cleanser")
		Category.create(name: "Face Moisturizer")
		Category.create(name: "Serum")
		Category.create(name: "Face Mask")
		Category.create(name: "Sheet Mask")
	end
end