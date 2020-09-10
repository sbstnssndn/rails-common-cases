Rails.application.routes.draw do
  resources :people
  devise_for :users

  resources :appointment_types
  resources :appointments
  resources :businesses
  resources :exam_batteries
  resources :exams

  root 'pages#index'
end
