Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/users/:id', to: 'user#show', as: "user"
  resources :journals, only: [:show, :index, :new, :create, :destroy]
  resources :goals

  get "/login", to: "users#login", as: "login"
  post "/handle_login", to: "users#handle_login"
  delete "/logout", to: "users#logout", as: "logout"

  get '/appointments/new', to: 'appointments#new', as: 'new_appointment'
  post '/appointments', to: 'appointments#create', as: 'create_appointment'
  get "/appointments", to: "appointments#index", as: "appointments"
  get "/appointments/:id", to: "appointments#show", as: "appointment"
  delete "/appointments/:id", to: "appointments#destroy"
  get '/appointments/:id/edit', to: 'appointments#edit', as: 'edit_appointment'
  patch '/appointments/:id', to: 'appointments#update'

  get '/profile', to: 'users#profile', as: 'profile'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  post '/users/new', to: "users#new"
  
  post '/appointments/:id/edit', to: "appointments#edit"

end
