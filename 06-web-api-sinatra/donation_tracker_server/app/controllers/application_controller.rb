class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  # HTTP Verb '/endpoint'

  # GET: read request/ retrieve data 
  # POST: receiving data that we want to do something with create something new  
  # PATCH: trying to update something based on some data we've received 
  # DELETE: delete an existing something 

  get '/welcome' do
    "Hello World"
  end
end