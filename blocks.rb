def test
  yield
end

test { puts "Hello world" }