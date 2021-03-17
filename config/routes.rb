Rails.application.routes.draw do

  resources :books
  #figure out what needs to be there

  resources :users, only: [:create, :show, :index]
  post '/login', to: 'users#create_session'
  delete '/logout', to: 'users#destroy'
  # get '/logged_in', to: 'sessions#is_logged_in?'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
