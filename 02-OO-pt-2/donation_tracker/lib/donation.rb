require 'pry'
require_relative './helper_methods.rb'

class Donation < HelperMethods # inheriting all methods defined in the HelperMethods class
  
  # keep track of all the donations we've created when we create a new donation

  # class variable: this is only accessible to the class 
  # @@all = []

  @@counter = 0

  attr_accessor :org, :amt, :date, :cfo

  # def self.all # class method here, it belongs to the class
  #   @@all 
  # end\

  # def self.all 
  #   puts "hahaha gotchya!"
  # end

  def self.find(org_name) 
    # I want to search the collection of donations and return the donation whos org matches the org_name passed in
    # self.all # this returns an array nd I want to look inside of this array and return a match
    self.all.find {|x| x.org == org_name}

    # self.all.find do |x|
    #   x.org == org_name
    # end
  
  end

  # def initialize(org, amt, date) 
  #   @org = org # what is an instance variable?  
  #   @amt = amt
  #   @date = date

  #   @@all << self # always refers to the thing that the method is being called on
  # end

  # mass assignment 
  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value) # self.org=("feeding_america")
    end

    @@all << self
    
  end

  def self.counter 
    @@counter
  end

  def self.increment_counter
    @@counter += 1
  end


  def print 
    x = 1 # local variable
    # puts "**************"
    # puts self.amt
    # puts self.org 
    # puts self.date 
    # puts "**************"

    puts "**************"
    puts @amt
    puts @org 
    puts @date 
    puts "**************"

    @amt 
  end

  def another_method
    # I cant access x 
  end

end

feeding_america = Donation.new(org: 'Feeding America', amt: 100, date: "10/12/22", cfo: "Sam Avery")
ahs = Donation.new(amt: 100, date: "10/12/22", org: 'American Humane Society')
feeding_america.print # self => feeding america instance

binding.pry


# 2 types of variables:

# local variable: this variable can only be referenced in the scope of the block it was defined in
# instance variable: gets attached to the instance its defined for


# Donation.find # self => Donation class
# User.find => # self => User class