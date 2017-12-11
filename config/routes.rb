Rails.application.routes.draw do
  resources :guests
  namespace 'api' do
    namespace 'v1' do
      resources :orders
    end
  end
  
  root :to => 'dashboards#index'

  resources :test
  resources :dashboards
  resources :customers
  resources :orders
  resources :staffs
  resources :salaries
  resources :measurements

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
