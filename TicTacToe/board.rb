class Board

  WINNING_COMBINATIONS = [
    [0,1,2], [3,4,5], [6,7,8],
    [0,3,6], [1,4,7], [2,5,8], 
    [0,4,8], [2,4,6]           
  ].freeze


  def initialize
    @grid = Array.new(9, " ")
  end

  def display

    puts ""
    puts " #{@grid[0]} | #{@grid[1]} | #{@grid[2]} "
    puts "---+---+---"
    puts " #{@grid[3]} | #{@grid[4]} | #{@grid[5]} "
    puts "---+---+---"
    puts " #{@grid[6]} | #{@grid[7]} | #{@grid[8]} "
    puts ""
    
  end

  def valid_move?(position)
    index = position_to_index(position)
    index.between?(0,8) && @grid[index] == " "
    
  end

  def position_to_index(position)
    position.to_i - 1
  end

  def place_symbol(position, symbol)
    if valid_move?(position)
      @grid[position_to_index(position)] = symbol

      true
    else
      false
    end
    
  end

  def winner?
    !!winning_positions
    
  end

  def draw?
    full? && !winner?
    
  end

  def full?
    @grid.none? { |cell| cell == " " }
  end

  def winning_positions
    WINNING_COMBINATIONS.each do |combo|
      a, b, c = combo
      if [@grid[a], @grid[b], @grid[c]].uniq.size == 1 && @grid[a] != " "
        return combo
      end
    end
    nil 
  end
end
