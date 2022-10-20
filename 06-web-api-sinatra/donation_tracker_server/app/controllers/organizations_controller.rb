class OrganizationsController < ApplicationController 

  

  # when we define our endpoints for basic CRUD actions, we're going to follow a pattern called REST

  # REST 


  # endpoint: going to retrieve all organizations 

  get '/organizations' do 
    # Get all organizations from DB
    organizations = Organization.all

    # return a JSON response including the organizations
    organizations.to_json # convert data to JSON format
  end

  # endpoint: going to retrieve a SINGLE donation
  # How do we know which donation


  # dynamic route: 
  get '/organizations/:id' do 

    # how do we get the value of ':id' > params 
    # params is a hash only available to the controller
    # 2 ways we add key/value pairs in the params hash: 1. dynamic routes 2. incoming form values
    # params[:id] => returns the ID the request came in with
    organization = Organization.find(params[:id])
    organization.to_json

  end


end