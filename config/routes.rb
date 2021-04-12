Rails.application.routes.draw do
  devise_for :users
  # root 'landing#index'
  get 'landing/index'
  root 'landing#users_list'

  resources :messages, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
