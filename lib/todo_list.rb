require_relative './todo_item'

class TodoList

  attr_accessor :items

  def initialize
    @items = []
  end

  def add(description)
    new_item = TodoItem.new(description)
    items << new_item
  end

end
