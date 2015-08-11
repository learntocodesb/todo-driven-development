require_relative '../lib/todo_list'
require_relative './spec_helper'

# INSTRUCTIONS:
# Go through the tests in order from top to bottom
# until all tests are implemented and green.

# 1) Check the test output
# 2) *RED* Write failing test (skip this step if test
#            already implemented)
# 2) *GREEN* Fix the test failure
#       - ProTip: switch to file with command + p
#       - Be sure to have the pane you want
#          it to open in selected first!
# 3) Commit
#      - ProTip: review your changes in SourceTree
#          before committing
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

  it 'adds newest todos to the top of the list' do
    todos = TodoList.new
    todos.add 'Pay bills'
    todos.add 'Do laundry'
    todos.add 'Walk dog'

    # Question: what happens if
    # you re-order the parameters?
    assert_descriptions_equal ['Walk dog', 'Do laundry', 'Pay bills'],
      todos

  end

  it 'displays incomplete items with a [ ]' do
    todos = TodoList.new
    todos.add 'Do the laundry'
    assert_equal '[ ] Do the laundry',
      todos.to_s
  end

  it 'displays completed items with a [X]'

  it 'displays numbers next to each todo item'

  it 'deletes completed todos when you call clear'

  # Congratulations, you now have
  # a usable todo list! Just don't restart
  # your computer ;-)

  # try making a usable command line app! See todo.rb


  # force minitest not to randomize test order
  def self.test_order
    :alpha
  end
end
