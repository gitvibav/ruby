module Logger
  def log(msg)
    puts "LOG: #{msg}"
  end
end

class User
  include Logger
end

u = User.new
u.log("created")