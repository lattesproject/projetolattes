Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about' , to: 'pages#about'
  resources :users, except: [:new]
  resources :events, except: [:edit]
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
