# config/routes.rb
Rails.application.routes.draw do
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
end
