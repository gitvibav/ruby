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

users = []

users << User.new("A", "a@test.com")
users << User.new("B", "b@test.com")

users.each do |u|
  puts u.info
end