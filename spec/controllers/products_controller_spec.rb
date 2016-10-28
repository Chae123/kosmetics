
require "rails_helper"

describe ProductsController, :type => :controller do
	context "display, edit and delete an existing product" do
		before :each do
			@product = create(:product)
		end

		describe "GET #index" do
			it "populates an array of all products" do
				@product2 = create(:product)
				get :index
				expect(assigns(:products)).to match_array([@product, @product2])
			end

			it "renders the :index template" do
				get :index
				expect(response).to render_template :index
			end
		end

		describe "GET #show" do
			it "assigns the requested product to @product" do
				get :show, id: @product
				expect(assigns(:product)).to eq @product
			end

			it "renders the :show template" do
				get :show, id: @product
				expect(response).to render_template :show
			end
		end

		describe "GET #new" do
			it "assigns a new Product to @product" do
				get :new
				expect(assigns(:product)).to be_a_new(Product)
			end

			it "renders the :new template" do
				get :new
				expect(response).to render_template :new
			end
		end

		describe "GET #edit" do
			it "assigns the requested product to @product" do
				get :edit, id: @product
				expect(assigns(:product)).to eq @product
			end

			it "renders the :edit template" do
				get :edit, id: @product
				expect(response).to render_template :edit
			end
		end

		describe "DELETE #destroy" do
			it "deletes the product from the database" do
				expect{
					delete :destroy, id: @product
				}.to change(Product, :count).by(-1)
			end

			it "redirects to the products#index" do
				delete :destroy, id: @product
				expect(response).to redirect_to products_url
			end
		end
	end

	describe "POST #create" do
		before :each do
			@product = attributes_for(:product)
		end

		context "with valid attributes" do
			it "saves the new product in the database" do
				expect{
					post :create, product: attributes_for(:product)
				}.to change(Product, :count).by(1)
			end

			it "redirects to products#show" do
				post :create, product: attributes_for(:product)
				expect(response).to redirect_to product_path(assigns[:product])
			end
		end

		context "with invalid attributes" do
			it "does not save the new product in the database" do
				expect{
					post :create, product: attributes_for(:invalid_product)
				}.not_to change(Product, :count)
			end

			it "re-renders the :new template" do
				post :create, product: attributes_for(:invalid_product)
				expect(response).to render_template :new
			end
		end
	end

	describe "PATCH #update" do
		before :each do
			@product = create(:product, name: "Cream", price: 100)
		end

		context "with valid attributes" do
			it "locates the requested @product" do
				patch :update, id: @product, product: attributes_for(:product)
				expect(assigns(:product)).to eq(@product)
			end

			it "updates the product in the database" do
				patch :update, id: @product, product: attributes_for(:product,
					name: "Cream", price: 100)
				@product.reload
				expect(@product.name).to eq("Cream")
				expect(@product.price).to eq(100)
			end

			it "redirects to the updated product" do
				patch :update, id: @product, product: attributes_for(:product)
				expect(response).to redirect_to @product
			end
		end

		#needs fixing!
		# context "with invalid attributes" do
		# 	it "does not update the product" do
		# 		patch :update, id: @product, product: attributes_for(:product,
		# 			name: "Cream", price_in_cents: nil)
		# 		@product.reload
		# 		expect(@product.name).not_to eq("Cream")
		# 		expect(@product.price_in_cents).to eq(10000)
		# 	end

		# 	it "re-renders the :edit template" do
		# 		patch :update, id: @product, product: attributes_for(:invalid_product)
		# 		expect(response).to render_template :edit
		# 	end
		# end
	end

end