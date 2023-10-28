Rails.application.routes.draw do
  resources :students
  resources :machines
  resources :trainings
  resources :gyms
  resources :employees
  resources :alunos
  devise_for :users
  get 'home/index'
  root "home#index" 

  # #alunos
  # get "students" => "students#index", as: "student"
  # get "students/:slug" => "students#show", as: "student" 

  # # #funcionario
#  get "training" => "trainings#index", as: "trainings"
#  get "trainings/:slug" => "trainings#show", as: "training" 

  # # #Machines
  # get "machine" => "machine#index", as: "machines"
  # get "machines/:slug" => "machine#show", as: "machine" 

  # # #Gym
  # get "gym" => "gym#index", as: "gyms"
  # get "gyms/:slug" => "gyms#show", as: "gym" 





  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
