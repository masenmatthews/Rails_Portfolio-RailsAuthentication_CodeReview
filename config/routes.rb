Rails.application.routes.draw do
  devise_for :users
  root :to => 'posts#index'

  resources :posts do
    resources :comments
  end

  resources :projects
  resources :contacts
  resources :abouts

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
