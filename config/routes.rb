Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'root#angular'

  namespace :api do
    resources :works, only: [:index]
  end

  get '*path.html' => 'root#angular', :layout => 0
  get '*path' => 'root#angular'
end
