Rails.application.routes.draw do
  resources :students
  resources :courses

  root "students#index"
end
