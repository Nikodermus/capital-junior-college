Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/last_user' => 'ajax#last_user', as: :last_user
  post '/random_user' => 'ajax#random_user', as: :random_user
  root to: 'ajax#index'
end
