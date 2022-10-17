class Organization < ActiveRecord::Base
    has_many :donations
    has_many :donors, through: :donations 

    # this collection is returned as an array 

    # .donations => return an array of all associated donations 
    # .donations << donation

    # .donors 
end 