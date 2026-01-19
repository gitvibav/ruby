class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    "Hello #{@name}"
  end
end

u = User.new("Vibav")
puts u.greet
puts u.name