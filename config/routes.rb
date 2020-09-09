Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  resources :reviews
  resources :wholesalers
  resources :restaurants
  post '/login', to: 'sessions#login', as: 'login'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  get '/sessions', to: 'sessions#index', as: 'homepage'
  delete '/logout', to: 'sessions#logout', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
