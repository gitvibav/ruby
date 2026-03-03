class UserRequest
  attr_accessor :count, :window_start

  def initialize(time)
    @count = 1
    @window_start = time
  end
end

class RateLimiter
  def initialize(limit:, window:)
    @limit = limit
    @window = window # in seconds
    @requests = {}
  end

  def allow(user)
    now = Time.now
    user_request = @requests[user]

    if user_request.nil?
      @requests[user] = UserRequest.new(now)
      return true
    end

    if window_expired?(user_request, now)
      reset_window(user_request, now)
      return true
    end

    if user_request.count < @limit
      user_request.count += 1
      return true
    end

    false
  end

  private

  def window_expired?(user_request, now)
    now - user_request.window_start > @window
  end

  def reset_window(user_request, now)
    user_request.count = 1
    user_request.window_start = now
  end
end

rate_limiter = RateLimiter.new(limit: 5, window: 60)

7.times do
  allowed = rate_limiter.allow("user123")
  puts "Allowed: #{allowed}"
end