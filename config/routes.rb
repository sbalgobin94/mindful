Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/users/:id', to: 'user#show', as: "user"
  resources :journals, only: [:new, :create, :show, :destroy, :index]
  resources :goals
  resources :therapists, only: [:index, :show]

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
  post '/profile', to: 'users#profile'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  post '/users/new', to: "users#new"

  post '/appointments/:id/edit', to: "appointments#edit"

  post '/goals/:id/edit', to: "goals#edit"

  get '/journals/:id/edit', to: 'journals#edit', as: 'edit_journal'
  patch '/journals/:id', to: 'journals#update'
  post '/journals/:id/edit', to: 'journals#edit', as: 'e_journal'

end
