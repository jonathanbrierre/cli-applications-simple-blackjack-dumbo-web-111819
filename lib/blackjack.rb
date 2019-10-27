def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...12)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts  "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    sum = deal_card + deal_card
   
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  valid_inputs = ["h", "s"]
  prompt_user
  user_input = get_user_input
  
  until valid_inputs.include?(user_input)
    invalid_command
    prompt_user
    card_total
    user_input = get_user_input
  end
  if user_input  == "h"
    new_card = deal_card
    card_total+= new_card
  end 
  if user_input == "s"
    card_total
  end

end

def invalid_command
 puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
