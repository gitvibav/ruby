# Classes and Object Instantiation Example
# Demonstrates creating a class, instantiating objects, and iterating over a collection

class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def info
    "#{name} - #{email}"
  end
end

# Create an array to store user objects
users = []

# Add new User instances to the array
users << User.new("A", "a@test.com")
users << User.new("B", "b@test.com")

# Iterate over users and display their information
users.each do |u|
  puts u.info
end