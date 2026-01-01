class Player
  attr_reader :name, :symbol 
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def choose_move(board)
    loop do
      print "#{name} (#{symbol}), enter your move (1-9): "
      input = gets.chomp

      if board.valid_move?(input)
        return input.to_i
      else
        puts "Invalid move. Try again."
      end
    end
    
  end
end
