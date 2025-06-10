puts ">>> Loading CORS configuration"
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "https://plant-capstone-frontend.onrender.com", "http://localhost:5173"

    resource "*",
      headers: :any,
      methods: [ :get, :post, :patch, :put, :delete, :options, :head ],
      credentials: true
  end
end
