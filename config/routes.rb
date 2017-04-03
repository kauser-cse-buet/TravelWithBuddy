Rails.application.routes.draw do
  #get '/home', to: 'static_pages#home'
  get '/travel_events/:id/inviation', to: 'travel_events#new_invitations', as: 'new_invitations'
  post '/travel_events/:id/inviation', to: 'travel_events#create_invitations', as: 'create_invitations'
  
  get '/home', to: 'travel_events#index', as: 'home'
  resources :travel_events
  resources :travel_destinations
  devise_for :admins



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  root to: "travel_events#index"
 
  end
