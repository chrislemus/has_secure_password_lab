Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create, :new]
  get '/signup' => 'users#create'
  get '/welcome' => 'users#home'
  get '/login' => 'users#new'
end
