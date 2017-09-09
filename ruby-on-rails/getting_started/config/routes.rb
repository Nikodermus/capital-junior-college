Rails.application.routes.draw do
  get 'welcome/index' => 'welcome#index'
  
  #Generates 8 routes
  resources :articles do  
    resources :comments
  end





  root to: 'articles#index'
end
