Rails.application.routes.draw do
  resources :printers
  resources :consumables
  resources :accessories
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
