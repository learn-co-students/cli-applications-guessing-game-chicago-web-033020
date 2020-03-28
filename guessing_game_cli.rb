
require 'pry'

def run_guessing_game
  random_number = rand(6) + 1
  input = gets.chomp
  if input == "exit"
    print "Goodbye!"
  elsif input.to_i != random_number
    print "Sorry! The computer guessed #{random_number}."
  else
    print "You guessed the correct number!"

  end
end
