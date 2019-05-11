# rock breaks scissors
# paper covers rock
# scissors cuts paper
# rock crushes lizard
# lizard poisons spock
# spock smashes scissors
# scissors decapitates lizard
# lizard eats paper
# paper disproves spock
# spock vaporizes rock

VALID_CHOICES = %w(rock r paper p scissors s lizard l spock v)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' || 'r' && second == 'scissors' || 's') ||
    (first == 'paper' || 'p' && second == 'rock' || 'r') ||
    (first == 'scissors' || 's' && second == 'paper' || 'p') ||
    (first == 'lizard' || 'l' && second == 'spock' || 'v') ||
    (first == 'spock' || 'v' && second == 'scissors' || 's') ||
    (first == 'scissors' || 's' && second == 'lizard' || 'l') ||
    (first == 'lizard' || 'l' && second == 'paper' || 'p') ||
    (first == 'paper' || 'p' && second == 'spock' || 'v') ||
    (first == 'spock' || 'v' && second == 'rock' || 'r')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end


loop do # main loop
  player_count = 0
  computer_count = 0
  if player_count == 5
    prompt("YOU ARE THE ULTIMATE WINNER.")
    break
  elsif computer_count == 5
    prompt("COMPUTERS DOMINATE. HUMANS CEASE TO EXIST.")
    break
  end

  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  # if (choice == 'rock' && computer_choice == 'scissors') ||
  #     (choice == 'paper' && computer_choice == 'rock') ||
  #     (choice == 'scissors' && computer_choice == 'paper')
  #   prompt("You won!")
  # elsif (choice == 'rock' && computer_choice == 'paper') ||
  #       (choice == 'paper' && computer_choice == 'scissors') ||
  #       (choice == 'scissors' && computer_choice == 'rock')
  #   prompt("Computer won!")
  # else
  #   prompt("It's a tie!")
  # end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
