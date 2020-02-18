Rails.application.routes.draw do
	resources :posts do
    get "testajax"
    resources :likes
  end
	
	root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
