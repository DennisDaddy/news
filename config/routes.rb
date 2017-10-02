Rails.application.routes.draw do

  get 'posts/new'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/update'

  get 'posts/show'

  get 'posts/destroy'

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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

