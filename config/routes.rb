Civil7::Application.routes.draw do
  #get "user/index"
  devise_scope :user do   
	match '/user/fill_user_info' => 'user#fill_user_info', :as => 'fill_user_info'
	match '/user/make_shirt' => 'shirts#make_shirt', :as => 'make_shirt'
	match '/user/checkout' => 'orders#checkout', :as => 'checkout'

	match '/user/:id' => 'user#index', :as => 'myaccount'
  end
	match '/thankyou' => 'home#thankyou', :as => 'thankyou'
  
  devise_for :users

  resources :styles

  get "home/index"

  resources :shirts

  resources :orders
  
  
  
  root :to => "home#index"

end
