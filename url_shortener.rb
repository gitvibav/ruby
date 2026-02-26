class UrlShortener

  ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

  def initialize
    @short_to_long = {}
    @long_to_short = {}
  end

  def shorten(url:)
    return @long_to_short[url] if @long_to_short.key?(url)

    short_code = generate_short_code
    @short_to_long[short_code] = url
    @long_to_short[url] = short_code

    short_code
  end

  def expand(short_code:)
    return @short_to_long[short_code]
  end

  private

  def generate_short_code(length = 6)
    loop do
      code = Array.new(length) { ALPHABET.sample }.join
      return code unless @short_to_long.key?(code)
    end
  end
end

shortly = UrlShortener.new

code1 = shortly.shorten(url: "https://google.com")
puts code1

original = shortly.expand(short_code: code1)
puts original

code1 = shortly.shorten(url: "https://google.com")
puts code1