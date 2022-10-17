class Donor < ActiveRecord::Base
  has_many :donations
  has_many :organizations, through: :donations 


  # the methods for has_many through are teh same as has_many 

  # .organizations 

end
