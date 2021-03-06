Rails.application.routes.draw do
	mount ActionCable.server => '/cable'
	resources :payments
	devise_for :users, :controllers => { :registrations => "user_registrations"}

	resources :users

	resources :products do
		resources :comments
	end

	resources :orders, only: [:index, :show, :create, :destroy]

	get 'static_pages/about'

	get 'static_pages/contact'

	get 'static_pages/brands'

	get 'static_pages/index'

	get 'static_pages/contact'

	get 'static_pages/thank_you'

	post 'static_pages/thank_you'

	get 'static_pages/landing_page'

	root 'static_pages#index'
	# root 'static_pages#landing_page'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
