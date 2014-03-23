require 'pry'
class Game
  attr_reader :board, :player1, :player2, :current_player, :winner
  def initialize
    @board = Board.create
    @player1 = Player.new('X')
    @player2 = Player.new('O')
    @current_player = @player1
    @winner
  end

  def change_turns
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def win?
    result = false
    [0,3,6].each do |index|
      if @board.spaces[index].marked_by == @board.spaces[index + 1].marked_by && @board.spaces[index+1].marked_by == @board.spaces[index + 2].marked_by
        result = true
        @winner = @board.spaces[index].marked_by
      end
    end

    [0,1,2].each do |index|
      if @board.spaces[index].marked_by == @board.spaces[index + 3].marked_by && @board.spaces[index+3].marked_by == @board.spaces[index + 6].marked_by
        result = true
        @winner = @board.spaces[index].marked_by
      end
    end

    if (@board.spaces[4].marked_by == @board.spaces[0].marked_by && @board.spaces[0].marked_by == @board.spaces[8].marked_by) || (@board.spaces[2].marked_by == @board.spaces[4].marked_by && @board.spaces[4].marked_by == @board.spaces[6].marked_by)
      result = true
      @winner = @board.spaces[4].marked_by
    end
    result
  end

end

