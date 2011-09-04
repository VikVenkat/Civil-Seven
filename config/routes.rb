Civil7::Application.routes.draw do
  #get "user/index"

  devise_for :users

  resources :styles

  get "home/index"

  resources :shirts

  resources :orders
  
  match '/user/:id' => 'user#index', :as => 'myaccount'
  root :to => "home#index"

end
