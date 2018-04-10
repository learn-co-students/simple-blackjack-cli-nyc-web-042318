def welcome
  # code #welcome here
     puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
	 card = Random.new
	 card.rand(1..11)
end

def display_card_total(handsum)
  # code #display_card_total here
  puts "Your cards add up to #{handsum}"
  handsum
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
	 gets.chomp
end

def end_game(handsum)
  # code #end_game here
  puts "Sorry, you hit #{handsum}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  # # I anticipate that I would instead use an array to represent the user's hand
  # # hand = [deal_card, deal_card]
  handsum = 0
  2.times do
    handsum += deal_card
  end
  display_card_total(handsum)
end

def hit?(handsum)
  # code hit? here
  prompt_user
  case get_user_input
  when 'h'
    handsum += deal_card
  when 's'
    handsum
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  game_total = initial_round
  while game_total < 21
    game_total = hit?(game_total)
	 display_card_total(game_total)
  end
  end_game(game_total)
end
