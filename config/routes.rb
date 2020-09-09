Rails.application.routes.draw do
  resources :appointment_types
  resources :appointments
  resources :businesses
  devise_for :users
  resources :exam_batteries
  resources :exams

  root 'application#index'
end
