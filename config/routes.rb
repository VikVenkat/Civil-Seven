Civil7::Application.routes.draw do
  devise_scope :user do   
	match '/user' => 'user#index'
  
  
	match '/user/fill_user_info' => 'user#fill_user_info', :as => 'fill_user_info'
	put '/user/fill_user_info_form' => 'user#fill_user_info_form', :as => 'fill_user_info_form'
	
	match '/user/make_shirt' => 'shirts#make_shirt', :as => 'make_shirt'
	match '/user/make_shirt_form' =>'shirts#make_shirt_form', :as => 'make_shirt_form'
	
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
