class Game
  
  def choice
    ["rock","paper","scissors"].sample
  end

  def result(player,player_choice,computer_choice)
    @player = player
    @user_choice = player_choice
    @computer_choice = computer_choice
    
    if @computer_choice == @user_choice
      "It's a tie!"
    else

     case @user_choice
      
      when 'rock'
         @computer_choice == 'scissors' ? @player : "Computer"
      when 'paper'
         @computer_choice == 'rock' ? @player : "Computer"
      when 'scissors'
        @computer_choice == 'paper' ? @player : "Computer"
      end

    end
  end

end