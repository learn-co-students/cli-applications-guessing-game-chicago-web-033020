# Code your solution here!
require 'pry'
def run_guessing_game 
  num = gen_number
  prompt_user
  user_input = get_user_input
  if user_input.to_i > 0
    do_guess(user_input.to_i, num)
  else
    if user_input == "exit"
      puts "Goodbye!"
    else
      puts "not integer!"
    end
  end
end 

def gen_number
  rand(1..6)
end

def prompt_user
  puts "Enter a number between 1 and 6"
end

def get_user_input
  gets.chomp
end

def right_guess 
  puts "You guessed the correct number!"
end

def wrong_guess(num1)
  puts "Sorry! The computer guessed #{num1}."
end

def do_guess(innum, gennum) 
  if innum == gennum
    right_guess
  else
    wrong_guess(gennum)
  end
end