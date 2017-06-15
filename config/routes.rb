Rails.application.routes.draw do
  root 'welcome#home'

  get '/signin', to: 'sessions#new'

  post '/sessions/create', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'

  post '/rides/create', to: 'rides#create'

  resources :users

  resources :attractions

end
