require 'pry'

# Basics of Ruby:

# hashes: => if we want to access a value, we use bracket notation
#   dog = {name: "Cookie"} 
#   dog[:name] => "Cookie"
# integers
#   - whole numbers => 3
#   - float => 3.14
# booleans:
  # - truthy 
  # - falsy 
# arrays:
#   - [have a collection of data]
# string
#   - "" => for string interpolation in ruby we have to use double 
#   - ''
# nil: nothing 
# symbol: we use symbols inside of hashes to write the keys 


# methods(functions)

# its going to be a behavior that peforms some type of task 

# class => Blue print where we encapsulate behaviors and data for all instances of that class

# instance => is a copy of the blueprint with its own details 


# => the foundation of Object orientation


# {
#   make: audi
#   model: tt
#   year: 2022
# }
# {
#   make: audi
#   model: s4
#   year: 2010
# }


class Donation 

  # organization 
  # amount 
  # date

  # attr_reader :org, :amt, :date
  # attr_writer :org, :date

  # this is going to give us both reader/writer method
  # Macro does is creates instance methods with the values passed to it
  attr_accessor(:org, :amt, :date)

  def initialize(x, y, z) # works right after .new is invoked 
    # this is a set of rules defined when the new instance is being created

    # instance variables => @variable_name, will get attached to the instance it is defined for 
    @org = x
    @amt = y
    @date = z
  end


  # getter/reader method and what this is going to do is read the property of what it is called on


  # # instance method, which means it needs to be called on an instance 
  def org 
    @org
  end

  # # setter/writer method, which is going to reassign the value of the instance variable

  def org=(org)
    @org = org 
  end

  def print # instance method needs to be called on the instance 
    # I want to print all the values of one donation
    binding.pry
    puts "**************"
    puts self.amt
    puts self.org 
    puts self.date 
    puts "**************"
  end



end

# I want to create a new instance of the donation class
# I need to use .new to instantiate a new instance 

# donation_1 = Donation.new #local variable has a scope of just where its defined 
d = Donation.new("Feeding America", 100, "10/10/22")
ahs = Donation.new("American Humane Society", 100, "10/10/22")
binding.pry # it will stop exactly where the pry is defined and pop into a pry console