Rails.application.routes.draw do
  root 'welcome#index'
  resources :initiatives
  resources :users
  post '/volunteer_initiatives', to: 'volunteer_initiatives#create'
  delete '/volunteer_initiatives', to: 'volunteer_initiatives#destroy'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
