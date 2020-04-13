Rails.application.routes.draw do
  resources :posts 
  resources :accounts
  #get '/post', to: 'posts#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
