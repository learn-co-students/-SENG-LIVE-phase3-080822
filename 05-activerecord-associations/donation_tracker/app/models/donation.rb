class Donation < ActiveRecord::Base

  # macro is a class method that then generates instance methods that can be called on the instance of that class 
  belongs_to :organization 
  belongs_to :donor 

  # .organization => a reader method that will return the org that the donation belongs to 
  # .organization = org => sets the association between the donation and the org
  # .organization_id = org_id * a little bit more optimal 
end 

