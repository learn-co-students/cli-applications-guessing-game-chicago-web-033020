# Code your solution here!
def run_guessing_game
  random_number = (rand(6) + 1)
  puts "Please guess a number between 1 and 6."
  input = gets.chomp
  if input == random_number.to_s #input is a string, so random_number needs to be converted to a string to match
    puts "You guessed the correct number!"
  elsif input == "exit"
    puts "Goodbye!"
  else
    puts "Sorry! The computer guessed #{random_number}."
  end
end
