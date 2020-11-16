Rails.application.routes.draw do
  get 'cards/new'
  get 'users/show'
  get 'items/index'
  devise_for :users
  root 'items#index'

  resources :users, only: %i[show update]
  resources :cards, only: %i[new create]
  resources :items, only: :order do
    post 'order', on: :member
  end
end
