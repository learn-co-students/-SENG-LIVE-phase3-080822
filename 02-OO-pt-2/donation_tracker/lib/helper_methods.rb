class HelperMethods 

  @@all = []

  def self.all 
    @@all 
  end

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value) # self.org=("feeding_america")
    end

    @@all << self
  end


end