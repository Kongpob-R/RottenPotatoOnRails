Rails.application.routes.draw do
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/signin' => 'sessions#new', :as => :signin
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies
  root :to => redirect('/movies')
end
