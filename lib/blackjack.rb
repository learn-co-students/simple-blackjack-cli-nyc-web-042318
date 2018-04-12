def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)

  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end

def initial_round
  newSum = deal_card + deal_card
  display_card_total(newSum)
  return newSum
end

def hit?(currentTotal)
  prompt_user
  storeInput = get_user_input

  if storeInput == "s"
    return currentTotal
  elsif storeInput == "h"
    currentTotal += deal_card
    return currentTotal
  else
    invalid_command
    prompt_user
  end

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome

  cards = initial_round
  until cards > 21
    cards = hit?(cards)
    display_card_total(cards)
  end
 end_game(cards)
end
