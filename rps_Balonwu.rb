############################################################
#  Name :       Cyril O. Balonwu
#  Assignment:   Rock Paper Scissors
#  Date:        19/10/2018
#  Class:       CIS 282
#  Description: Rock Paper Scissors
############################################################

keep_track = []
get_track = []

loop do

  options = ["rock", "paper", "scissors"]

  #computer's_choice.
  computer_choice = options[rand(options.length)]

  puts
  puts "You will be guessing against the computer "
  puts "Please choose between 1 for rock, 2 for paper or 3 for scissors "
  puts "What will you like to choose?"

  #User's choice should always be a number not a word.
  user_input = gets.to_i;


  def my_user_input(user_input)
    user_input_choosen = user_input

    if(user_input == 1)
      user_input_choosen = "rock"

    elsif (user_input == 2)
      user_input_choosen = "paper"

    elsif (user_input == 3)
      user_input_choosen = "scissors"

    end
    return user_input_choosen
  end


  #I need a function to handle the history of the guesses. Preferable an array.
  def track_user_guesses(user_input)
    track_user_input = Array.new
    track_user_input << user_input

    #return track_user_input
  end

  def get_string_output(user_input)
    track_str_input = Array.new

    if(user_input == 1)
    track_str_input.push("Paper ")
    elsif (user_input == 2)
      track_str_input.push("Rock")
    elsif(user_input == 3)
      track_str_input.push("Scissors")
    end
    return track_str_input
  end



  while !(my_user_input(user_input) == "rock" ||
                             my_user_input(user_input) == "paper" ||
                                            my_user_input(user_input) == "scissors" )
    puts "Invalid choice, enter 1 for Rock, 2 for Paper, or 3 for Scissors"
    puts "Please enter your choice?"
    user_input = gets.to_i;

    my_user_input(user_input)

  end


  if (my_user_input(user_input) == "rock" || my_user_input(user_input) == "paper" || my_user_input(user_input) == "scissors")

    #Collect the user input
    track_user_guesses(user_input) << user_input
    keep_track.push << get_string_output(user_input)
    get_track.push << track_user_guesses(user_input)

    if (my_user_input(user_input) == computer_choice)
      puts "You have chosen thesame as the computer "
    elsif (my_user_input(user_input) == "rock" && computer_choice == "scissors")
      puts "computer's choice is: " + computer_choice + ", you win!"
    elsif (my_user_input(user_input) == "rock" && computer_choice == "paper")
      puts "computer's choice is: " + computer_choice + ",computer wins :("
    elsif (my_user_input(user_input) == "paper" && computer_choice == "scissors")
      puts "computer's  choice is: " + computer_choice + ",computer wins "
    elsif (my_user_input(user_input) == "paper" && computer_choice == "rock")
      puts "computer's choice is: " + computer_choice + ", you win! "
    elsif (my_user_input(user_input) == "scissors" && computer_choice == "rock")
      puts "computer's choice is: " + computer_choice + ",computer wins "
    elsif (my_user_input(user_input) == "scissors" && computer_choice == "paper")
      puts "computer's choice is: " + computer_choice + " , you win!"
    end
    puts "Do you want to play again? (yes/no)"
    ans = gets.chomp.downcase
    break if ans == "no"

  end

end

# get_track.each do |x|
#   puts "Choices: #{get_track}"
# end
puts "Integer Choices: " + get_track.inspect.to_s
puts "String Choices " + keep_track.inspect.to_s
puts "You Played #{get_track.length} games "
