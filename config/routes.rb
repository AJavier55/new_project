Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  resources :reviews
  resources :wholesalers
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
