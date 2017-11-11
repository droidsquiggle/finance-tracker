Rails.application.routes.draw do
  devise_for :users
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#my_portfolio'
  
  get 'about' => 'welcome#about'
  get 'my_portfolio', to: 'users#my_portfolio'
  
  get 'search_stocks', to: 'stocks#search'
  
end
