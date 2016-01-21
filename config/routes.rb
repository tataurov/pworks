Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'root#index'
  get '/robots.txt' => 'root#robots'

  resources :works, only: [:index]
  resource :about, only: [:show]
  resource :contacts, only: [:show]

  get '*unmatched_route', to: 'application#not_found'
end
