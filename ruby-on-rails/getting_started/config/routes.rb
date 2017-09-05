Rails.application.routes.draw do
  get 'welcome/index' => 'welcome#index'
  
  #Generates 8 routes
  resources :articles





  root to: 'welcome#index'
end
