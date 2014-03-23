class Board
  attr_reader :spaces

  def initialize
    @spaces = []
  end

  def Board.create
    new_board = Board.new
    9.times do |i|
      new_board.spaces << Space.new(i + 1)
    end
    new_board
  end

end
