Rails.application.routes.draw do
  resources :computer_equipments
  resources :materials
  resources :phone_devices
  resources :phone_lines
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
