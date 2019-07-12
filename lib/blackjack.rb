def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game (num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit? (num)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    num += deal_card
  elsif answer == 's'
    #return
  else
    invalid_command
    prompt_user
  end
  return num
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = 0
  welcome
  total = initial_round
  while total < 21 do
    total = hit?(total)
  end
end_game(total)
puts "Your cards add up to #{total}"
end
    
