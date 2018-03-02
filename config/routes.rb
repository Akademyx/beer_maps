Rails.application.routes.draw do
  
  get 'beers' => "beers#index"
  root 'users#index'
  get 'new' =>'users#new'
  post 'users' => 'users#create'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'
end
