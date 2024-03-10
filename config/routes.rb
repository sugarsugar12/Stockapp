Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  root to: 'products#index'
  #resources :stocks, only: :index
  resources :products, only: [:new, :create, :index, :edit, :update, :destroy] do
    post 'update_stock', on: :collection
  end
  
end