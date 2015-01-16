def result_message(msg)
  puts msg
end

def win_message(msg)
  puts msg
  puts "Play again (Y/N)"
end

TIE = "It's a tie!"
COMPUTER = "Computer won!"
YOU = "You won!"

PAPER = "Paper wraps rock"
SCISSORS = "Scissors cuts paper"
ROCK = "Rock crushes scissors"

puts "Play Paper Rock Scissors!"

CHOICES = {"p" => "Paper", "r" => "Rock", "s" => "Scissors"}

continue = "Y"

while continue == "Y" || continue == "y" do

  puts "Choose one: (p/r/s)"

  selection = gets.chomp.downcase

  while !(CHOICES.keys.include?(selection))
    puts "Choice must be either p or r or s"
    puts "Choose again: (p/r/s)"
    selection = gets.chomp.downcase
  end    

  if selection == "p"
    player_selection = CHOICES[selection]
  elsif selection == "r"
    player_selection = CHOICES[selection]
  elsif selection == "s"
    player_selection = CHOICES[selection]
  end    
  
  computer_selection = CHOICES.values.sample

  puts "You picked #{player_selection} and computer picked #{computer_selection}"

  if player_selection == CHOICES.fetch("p") && computer_selection == CHOICES.fetch("p")
    result_message(" ")
    win_message(TIE)
    continue = gets.chomp.downcase
  elsif player_selection == CHOICES.fetch("p") && computer_selection == CHOICES.fetch("r")
    result_message(PAPER)
    win_message(YOU)
    continue = gets.chomp.downcase
  elsif player_selection == CHOICES.fetch("p") && computer_selection == CHOICES.fetch("s")
    result_message(SCISSORS)
    win_message(COMPUTER)
    continue = gets.chomp.downcase
  elsif player_selection == CHOICES.fetch("r") && computer_selection == CHOICES.fetch("p")
    result_message(PAPER)
    win_message(COMPUTER)
    continue = gets.chomp.downcase
  elsif player_selection == CHOICES.fetch("r") && computer_selection == CHOICES.fetch("r")
    result_message(" ")
    win_message(TIE)
    continue =gets.chomp.downcase
  elsif player_selection == CHOICES.fetch("r") && computer_selection == CHOICES.fetch("s")
    result_message(ROCK)
    win_message(YOU)
    contine = gets.chomp.downcase
  elsif player_selection == CHOICES.fetch("s") && computer_selection == CHOICES.fetch("p")
    result_message(SCISSORS)
    win_message(YOU)
    continue = gets.chomp.downcase
  elsif player_selection == CHOICES.fetch("s") && computer_selection == CHOICES.fetch("r")
    result_message(ROCK)
    win_message(COMPUTER)
    continue = gets.chomp.downcase
  elsif player_selection == CHOICES.fetch("s") && computer_selection == CHOICES.fetch("s")
    result_message(" ")
    win_message(TIE)
    continue = gets.chomp.downcase  
  end
end