Rails.application.routes.draw do
  #get '/home', to: 'static_pages#home'
  get '/home', to: 'travel_events#index', as: 'home'

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  root to: "travel_events#index"
 
  end
