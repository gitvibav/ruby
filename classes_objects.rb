# Classes and Objects
# Demonstrates object-oriented programming in Ruby

class User
  # attr_accessor creates getter and setter methods for :name
  attr_accessor :name

  # Constructor method - called when creating a new instance
  def initialize(name)
    @name = name  # @name is an instance variable
  end

  # Instance method that uses string interpolation
  def greet
    "Hello #{@name}"
  end
end

# Create a new instance of the User class
u = User.new("Vibav")

# Call instance methods
puts u.greet
puts u.name