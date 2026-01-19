# Blocks
# Demonstrates Ruby blocks - anonymous code blocks passed to methods

# Define a method that accepts a block using yield
def test
  yield  # Executes the block passed to the method
end

# Call the method with a block
test { puts "Hello world" }