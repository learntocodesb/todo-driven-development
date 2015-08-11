require_relative '../lib/todo_list'
require_relative './spec_helper'

# INSTRUCTIONS:
# 1) Run the tests
# 2) *RED* Write failing test (if there already is one)
# 2) *GREEN* Fix failure
# 3) Commit
# 4) *REFACTOR*
# 5) Commit
# 6) Repeat with next failing or unwritten test

# helper method to compare an array
# of descriptions to a todo list
def assert_descriptions_equal(expected_descriptions, todo_list)
  actual_descriptions =
    todo_list.items.map { |item| item.description }
  assert_equal expected_descriptions,
    actual_descriptions
end

describe TodoList do

  it 'is empty when initialized' do
    todo = TodoList.new
    assert_equal todo.items, []
  end

  it 'includes an item when you insert it' do
    todos = TodoList.new
    todos.add 'Learn about TDD in ruby!'

    # notice what happens to the failure
    # message if you re-order the parameters
    assert_descriptions_equal ['Learn about TDD in ruby!'],
      todos

  end

  it 'adds new todo items to the top of the list' do
    todos = TodoList.new
    todos.add 'Red'
    todos.add 'Green'
    todos.add 'Refactor!'

    # Question: what happens if
    # you re-order the parameters?
    assert_descriptions_equal ['Red', 'Green', 'Refactor!'],
      todos

  end

  it 'displays incomplete items with a [ ]' do
    todos = TodoList.new
    todos.add 'Do the laundry'
    assert_equal '[ ] Do the laundry',
      todos.to_s
  end

  it 'displays completed items with a [X]'

  it 'displays numbers next to each todo'

  it 'deletes completed todos when you call clear'

  # you choose the functionality from here! :-D

end
