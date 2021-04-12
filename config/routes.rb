Rails.application.routes.draw do
  root 'landing#index'
  get 'landing/index'

  resources :messages, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
