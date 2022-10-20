require './config/environment'

# Allow Cross Origin requests by establishing a CORS (Cross Origin Resource Sharing)policy
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# the line below adds the JSONBodyParser middleware made available by the rack-contrib gem. This allows Sinatra (which is built on Rack) to parse the body of incoming requests in JSON format. (The body in JSON format will be parsed and included in a hash called `params` that we can access within our controller)
use Rack::JSONBodyParser


# we want to mount the controllers we want to use with Sinatra
# we run only to mount our 'mother' controller 
run ApplicationController

# every child controller will define the 'use' method instead 
use DonationsController
use OrganizationsController