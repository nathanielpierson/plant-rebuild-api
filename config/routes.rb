Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/" => "main#index"

  get "/users" => "users#index"
  get "/users/current" => "users#show"
  post "/users" => "users#create"
  put "/users/current" => "users#update"

  get "/plants" => "plants#index"
  get "/plants/:id" => "plants#show"
  post "/plants" => "plants#create"
  patch "/plants/:id" => "plants#update"
  delete "/plants/:id" => "plants#delete"

  get "/schedules" => "schedules#index"
  get "/schedules/plant/:id" => "schedules#show_of_plant"
  get "/schedules/:id" => "schedules#show"
  post "/schedules" => "schedules#create"
  put "/schedules" => "schedules#update"
  put "schedules/:id/water" => "schedules#water"
  delete "/schedules/:id" => "schedules#delete"
  patch "/reset" => "schedules#reset"

  get "/plant_counts" => "plant_counts#index"
  put "/plant_counts/:id" => "plant_counts#update"

  post "/sessions" => "sessions#create"

  post "/test" => "plant_counts#create"
end
