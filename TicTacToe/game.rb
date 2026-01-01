class Game
  def initialize
    @board = Board.new

    print "Enter name for Player 1 (X): "
    player1_name = gets.chomp
    @player1 = Player.new(player1_name, "X")

    print "Enter name for Player 2 (O): "
    player2_name = gets.chomp
    @player2 = Player.new(player2_name, "O")

    @current_player = @player1  
  end

  def play
    @board.display

    loop do
      move = current_player.choose_move(@board) 
      @board.place_symbol(move, current_player.symbol)
      @board.display

      if @board.winner? || @board.draw?
        announce_result
        break
      end

      switch_player
    end
  end

  private

  def current_player
    @current_player
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def announce_result
    if @board.winner?
      puts "Congratulations, #{current_player.name} (#{current_player.symbol}) wins!"
    elsif @board.draw?
      puts "It's a draw!"
    end
  end
end
