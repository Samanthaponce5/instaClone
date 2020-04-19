Rails.application.routes.draw do
  resources :likes
 
  root 'home#index'
resources :sessions, only: [:new, :create, :destroy]
  resources :posts 
  resources :accounts,  only: [:index, :create, :new ]
  get 'signup', to: 'accounts#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get '/:username', to: 'accounts#show', as: :profile
  get '/visit/:id', to: 'accounts#visit', as: 'visit'
  resources :posts do
    resources :comments
  end
  # get 'profile', to: 'accounts#show', as: 'profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
