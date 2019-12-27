require 'sidekiq/web'

Rails.application.routes.draw do
  resources :services
  resources :clients
  resources :trainers
  resources :reservations
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users, :controllers => {registrations: 'registrations'}
  root to: 'services#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
