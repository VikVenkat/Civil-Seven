Civil7::Application.routes.draw do
  devise_for :users

  resources :styles

  get "home/index"

  resources :shirts

  resources :orders
  
  
  root :to => "home#index"

end
