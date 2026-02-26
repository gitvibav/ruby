class TodoList
  def initialize
    @todos = {}
  end

  def add_item(user:, item:)
    @todos[user] ||= []
    @todos[user] << item
  end

  def update_item(user:, old_item:, new_item:)
    return unless @todos[user]
    if @todos[user].include?(old_item)
        @todos[user].map!{ |i| i == old_item ? new_item : i }
    else
        puts "Item not found for #{user}"
    end
  end

  def delete_item(user:, item:)
    return unless @todos[user]
    @todos[user].delete(item)
  end

  def list_items(user:)
    @todos[user] || []
  end

end

todo = TodoList.new
todo.add_item(user: "user1", item: "Buy milk")
todo.add_item(user: "user1", item: "Study Ruby")

p todo.list_items(user: "user1")

todo.update_item(user: "user1", old_item: "Buy milk", new_item: "Buy Almond Link")

p todo.list_items(user: "user1")