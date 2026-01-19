# Modules
# Demonstrates Ruby modules - used for namespacing and mixins (code reuse)

# Define a module with a log method
module Logger
  def log(msg)
    puts "LOG: #{msg}"
  end
end

# Include the module in a class to add its methods
class User
  include Logger
end

# Create an instance and use the method from the included module
u = User.new
u.log("created")