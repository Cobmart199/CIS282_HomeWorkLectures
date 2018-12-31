############################################################
#  Name :       Cyril O. Balonwu
#  Assignment:   Connect Four Finals
#  Date:        10/12/2018
#  Class:       CIS 282
#  Description: Connect Four Finals
############################################################


class ConnectFour

  attr_accessor  :game_over, :players_turn, :game_board


  def check_winner

    for x in 0..6

      for y in 0..7

        if @game_board[x][y] == @players_turn &&

            @game_board[x][y +1] == @players_turn &&

            @game_board[x][y +2] == @players_turn &&

            @game_board[x][y +3] == @players_turn

          puts "#{players_turn} wins!"

          @game_over = true

        end


        if @game_board[x][y] == @players_turn &&

            @game_board[x + 1][y]== @players_turn &&

            @game_board[x + 2][y] ==@players_turn &&

            @game_board[x + 3][y] == @players_turn

          puts "#{players_turn} wins!"

          @game_over = true

        end



        if @game_board[x][y] == @players_turn &&

            @game_board[x+1][y -1] == @players_turn &&

            @game_board[x+2][y -2] == @players_turn &&

            @game_board[x+3][y -3] ==@players_turn

          puts "#{players_turn} wins!"

          @game_over = true

        end


        if @game_board[x][y] == @players_turn &&

            @game_board[x+1][y +1] == @players_turn &&

            @game_board[x+2][y +2] == @players_turn &&

            @game_board[x+3][y +3] == @players_turn

          puts "#{players_turn} wins!"

          @game_over = true

        end


      end

    end

  end


  def initialize


    @players_turn = "\X"

    @game_board = [
        %w(_ _ _ _ _ _ _ _),
        %w(_ _ _ _ _ _ _ _),
        %w(_ _ _ _ _ _ _ _),
        %w(_ _ _ _ _ _ _ _),
        %w(_ _ _ _ _ _ _ _),
        %w(_ _ _ _ _ _ _ _),
        %w(1 2 3 4 5 6 7 8)]

    @game_over = false

    show_board

    play_game

  end

  def show_board

    @game_board.each do |row|

      puts ' ' + row.join(' ')

    end

  end

  def play_game

    until @game_over == true

      set_trap

      check_winner

      switch_turn

      show_board

    end

  end

  def what_move?(move)

    if (move.between?(1, 8) &&
        @game_board[0][move-1] == "_")

      true

      index = 6

      while @game_board[index][move-1] != "_"
        index -=1
      end

      @game_board[index][move-1] = @players_turn

    else

      puts "your move is not valid!, try again please!"

      !switch_turn

    end

  end

  def switch_turn

    @players_turn =
        @players_turn == "\X" ? "\O" : "\X"

  end

  def set_trap

    puts "To set your trap, pick a column from 1 through 8 #{players_turn}"

    column = gets.chomp.to_i

    what_move?(column)

  end

end


def play_connect_four
  print "\n This is the Game Connect Four! First player is \X and  second player is \O.\n  \
              Whom ever sets all the dots in any dimension wins the game! \
        \n Press any key to start playing!\n"
  gets.chomp

  ConnectFour.new

end

play_connect_four
