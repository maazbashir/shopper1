Rails.application.routes.draw do

  get 'orderitems/index'
  get 'products/index'
	root to: 'categories#index'


	resources :categories, only: [:index] do
		resources :products, only: [:index] 
	end


	get '/cart', to: 'order_items#index'
	resources :order_items, path: '/cart/items'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
