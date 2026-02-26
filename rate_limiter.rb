class RateLimiter
  def allow?(key)
    raise NotImplementedError, "Subclasses must implement allow?"
  end
end

class TokenBucketLimiter < RateLimiter
  def initialize(capacity:, refill_rate:)
    @capacity = capacity
    @refill_rate = refill_rate
    @store = {}
  end

  def allow?(key)
    now = Time.now.to_f

    bucket = (@store[key] ||= {
      tokens: @capacity,
      last_refill: now
    })

    refill(bucket, now)
  
    if bucket[:tokens] >= 1
      bucket[:tokens] -= 1
      true
    else
      false
    end
  end

  private

  def refill(bucket, now)
    elapsed = now - bucket[:last_refill]
    tokens_to_add= elapsed * @refill_rate

    bucket[:tokens] = [@capacity, bucket[:tokens] + tokens_to_add].min
    bucket[:last_refill] = now
  end
end

class RateLimitService
  def initialize(limiter:)
    @limiter = limiter
  end

  def allow_request?(key)
    @limiter.allow?(key)
  end
end

limiter = TokenBucketLimiter.new(capacity: 5, refill_rate: 1)
service = RateLimitService.new(limiter: limiter)

puts "Sending 10 requests..."

10.times do |i|
  allowed = service.allow_request?("user_123")
  puts "Request #{i+1}: #{allowed ? 'Allowed': 'Blocked'}"
  sleep( 0.5 )
end