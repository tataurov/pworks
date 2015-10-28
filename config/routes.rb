Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'root#angular'

  namespace :api do
    resources :works, only: [:index]
  end

  get '*path.html' => 'root#angular', :layout => 0
  get '*path' => 'root#angular'
end
