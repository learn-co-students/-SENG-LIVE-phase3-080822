class DonationsController < ApplicationController 

  

  # when we define our endpoints for basic CRUD actions, we're going to follow a pattern called REST

  # REST 


  # endpoint: going to retrieve all donations 

  get '/donations' do 
    # Get all donations from DB
    donations = Donation.all

    # return a JSON response including the donations
    donations.to_json # convert data to JSON format
  end

  # endpoint: going to retrieve a SINGLE donation
  # How do we know which donation


  # dynamic route: 
  get '/donations/:id' do 

    # how do we get the value of ':id' > params 
    # params is a hash only available to the controller
    # 2 ways we add key/value pairs in the params hash: 1. dynamic routes 2. incoming form values
    # params[:id] => returns the ID the request came in with
    donation = Donation.find(params[:id])
    donation.to_json

  end

  # endpoint: that will receive some form values, and create a new record in the DB 

  post '/donations' do 

    # well how do we get access to the info that was just submitted > params 
   # params => {"amount"=>900, "date"=>102022, "completed"=>false}


    # what do we do with that information
    # Donation.create(amount: params[:amount], completed: params[:completed], date: params[:date])

    donation = Donation.create(params)
    donation.to_json
  end

  # endpoint: update a donation 

  patch '/donations/:id' do 
    # goal here is to update a single Donation but we need to know which donation that is 
    donation = Donation.find(params[:id])

    # then we need to update the donation 
    donation.update(amount: params[:amount])
    donation.to_json
  end

  delete '/donations/:id' do 
    donation = Donation.find(params[:id])
    donation.destroy
  end




end 