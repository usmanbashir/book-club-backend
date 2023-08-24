# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     if Rails.env.production?
#       origins  'https://hello-readers.netlify.app/' 
#     else
#       origins 'http://localhost:3000'
#     end
# 
#     resource(
#       '*',
#       headers: :any,
#       expose: ['access-token', 'expiry', 'token-type', 'Authorization'],
#       methods: :any
#     )
#   end
# end

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: :any
  end
end
