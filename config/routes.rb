Rails.application.routes.draw do
  get 'restaurant/index'

  get 'restaurant/new'

  resources :restaurants

  root 'restaurant#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
