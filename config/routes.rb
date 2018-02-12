Rails.application.routes.draw do

  resources :messages
  get 'callback/index'
  post '/' => 'callback#sent_data'
  get 'callback/received_data'
  root 'dashboards#index'

  resources :ambassadors
  resources :guestlists
  resources :tags
  resources :taggings
  resources :events
  namespace 'api' do
    namespace 'v1' do
      resources :orders
      resources :guests
      resources :guestlists
      resources :events
    end
  end
  
  #root :to => 'dashboards#index'
  
  resources :guests
  resources :test
  resources :dashboards
  resources :customers
  resources :orders
  resources :staffs
  resources :salaries
  resources :measurements
  resources :events
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
