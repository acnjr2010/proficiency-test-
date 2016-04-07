Rails.application.routes.draw do
  #rotas
  resources :students
  resources :courses
  resources :classrooms

  #rota inicial
  root "classrooms#index"
end
