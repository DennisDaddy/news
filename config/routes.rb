Rails.application.routes.draw do

  
  root 'pages#home'

  get '/about', to: 'pages#about'
   get '/news', to: 'pages#news'
    get '/entertainment', to: 'pages#entertainment' 
    get  '/signup',  to: 'users#new'
    post '/signup',  to: 'users#create'

      get    '/login',   to: 'sessions#new'
      post   '/login',   to: 'sessions#create'
      delete '/logout',  to: 'sessions#destroy'

   resources :users
   resources :account_activations, only: [:edit]
   resources :password_resets,     only: [:new, :create, :edit, :update]
   resources :posts
   resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

