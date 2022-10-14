class Donation < ActiveRecord::Base

    # Create

    # .new is going to instantiate our RUBY object but wont create a db record, we have to take 1 step further and invoke .save
    # .create is going to instantiate AND persist the new record

    # Read 

    # .all return all donations in the donations table

    # .find(id): this would return a single donation that matches the id provided

    # .find_by(attr: val) this would return a single donation that matches the given value for an attribute

    # Update 
    # .update: will update an existing donation, first we need to find the donation we want to update

    # flow
    # 1. find the record 
    # 2. update the attribute 

    # Delete 

    # flow
    # 1. find the record 
    # 2. delete the record


    # to delete all data: .destroy_all

    # Donation.all.select do |d|
    #      donation.amount == 200
    # end 

end 

