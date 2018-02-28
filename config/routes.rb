Rails.application.routes.draw do

  get 'beers' => "beers#index"
  root 'users#new'

end
