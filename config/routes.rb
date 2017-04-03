Rails.application.routes.draw do

  get '/travel_events/:id/inviation', to: 'travel_events#new_invitations', as: 'new_invitations'
  post '/travel_events/:id/inviation', to: 'travel_events#create_invitations', as: 'create_invitations'

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
