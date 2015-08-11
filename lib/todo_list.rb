require_relative './todo_item'

class TodoList

  attr_accessor :items

  def initialize
    @items = nil
  end

  def add(description)
    new_item = TodoItem.new(description)
  end

end
