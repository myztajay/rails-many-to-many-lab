Rails.application.routes.draw do
  devise_for :users
  root 'appointments#index'
  get  'appointments/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients
  resources :appointments
  
end
