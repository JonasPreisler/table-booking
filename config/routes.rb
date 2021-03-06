Rails.application.routes.draw do

  get 'callback/index'
  post '/' => 'callback#received_data'
  get 'callback/received_data'
  root 'dashboard#index'
  

  resources :tablebookings
  resources :tables
  resources :messages
  resources :ambassadors
  resources :guestlists
  resources :tags
  resources :taggings
  resources :events
  namespace 'api' do
    namespace 'v1' do
      resources :tablebookings
      resources :orders
      resources :guests
      resources :guestlists
      resources :events
    end
  end
  
  #root :to => 'dashboard#index'
  
  resources :guests
  resources :test
  resources :dashboard
  resources :customers
  resources :orders
  resources :staffs
  resources :salaries
  resources :measurements
  resources :events
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
