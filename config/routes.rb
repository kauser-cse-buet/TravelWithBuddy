Rails.application.routes.draw do
  get '/home', to: 'travel_events#index', as: 'home'
  get '/users', to: 'users#index', as: 'users'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user'
  patch '/users/:id', to: 'users#update'
  put '/users/:id', to: 'users#update'

  devise_for :admins, controllers: { registrations: "devise_override/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  root to: "travel_events#index"
 
  end