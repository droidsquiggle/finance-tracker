Rails.application.routes.draw do
 
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show]
  resources :friendships
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#my_portfolio'
  
  get 'about' => 'welcome#about'
  get 'my_portfolio', to: 'users#my_portfolio'
  
  get 'search_stocks', to: 'stocks#search'
  
  get 'my_friends', to: 'users#my_friends'
  
  get 'search_friends', to: 'users#search'
  post 'add_friend', to: 'users#add_friend'
  
end
