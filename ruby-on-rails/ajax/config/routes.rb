Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users' => 'ajax#create', as: :users
  root to: 'ajax#index'
end
