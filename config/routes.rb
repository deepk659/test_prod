Rails.application.routes.draw do
  # resources :posts do
  #   get "testajax"
  #   resources :likes
  # end
  get "/posts/new" => "posts#new", :as => :new_post
  post "posts" => "posts#create", :as => :posts
  get "/posts" => "posts#index"
  get "posts/:id/edit" => "posts#edit", :as => :edit_post
  put "posts/:id" => "posts#update", :as => :post
  patch "posts/:id" => "posts#update"
  get "/posts/:id" => "posts#show"
  delete "/posts/:id" => "posts#destroy"
  get "posts/:id/view" => "posts#view"

  get "/posts/:post_id/likes/new" => "likes#new", :as => :new_post_like
  post "posts/:post_id/likes" => "likes#create", :as => :post_likes
  get "posts/:post_id/likes" => "likes#index"
  get "posts/:post_id/likes/:id/edit" => "likes#edit", :as => :edit_post_like
  put "posts/:post_id/likes/:id" => "likes#update", :as => :post_like
  patch "posts/:post_id/likes/:id" => "likes#update"
  get "posts/:post_id/likes/:id" => "likes#show"

   root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
