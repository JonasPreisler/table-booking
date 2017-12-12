Rails.application.routes.draw do

  resources :guestlists
  resources :tags
  resources :taggings
  resources :events
  namespace 'api' do
    namespace 'v1' do
      resources :orders
      resources :guests
      resources :events
    end
  end
  
  root :to => 'dashboards#index'
  
  namespace 'event' do
    namespace 'guestlist' do
      resources :guests
    end
  end
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
