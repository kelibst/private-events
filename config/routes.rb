Rails.application.routes.draw do
  resources :users, only: [:create, :show]
  get 'signup', to: 'users#new'
  root 'pages#home'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
