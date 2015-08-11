# TODO: write a REPL for the todo list here
# REPL means Read Evaluate Print Loop

# Here's a very basic REPL that
# Reads a name, Prints a greeting, and Loops

loop do
  puts 'What is your name?'
  input = gets.chomp
  if input == 'exit'
    exit
  else
    puts "Hello #{input}!"
  end
end

# normally we would write an integration test
# using mocks and stubs to test this
# this is out of scope of this exercise so it's
# optional
