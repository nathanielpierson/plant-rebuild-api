Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "https://plant-capstone-frontend.onrender.com"

    resource "*",
      headers: :any,
      methods: [ :get, :post, :patch, :put, :delete, :options, :head ],
      credentials: true  # if using cookies/auth
  end
end
