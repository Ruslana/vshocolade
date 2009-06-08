ActionController::Routing::Routes.draw do |map|
    
  map.resources :posts
  map.resources :blogs
  map.resources :categories
  map.resources :works
  map.resources :photos
  map.resources :sessions 
  map.resources :portfolios
  map.resources :titles
  map.resources :comments
  
  map.namespace :admin do |admin|
       
    admin.resources :users
    admin.resources :posts
    admin.resources :blogs
    admin.resources :categories
    admin.resources :works
    admin.resources :photos
    admin.resources :portfolios
    admin.resources :comments
  end
  
  map.root :controller => 'posts'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end
