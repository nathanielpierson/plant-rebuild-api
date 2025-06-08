Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  get "/users" => "users#index"
  get "/users/current" => "users#show"
  post "/users" => "users#create"

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
