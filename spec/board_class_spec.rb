require 'rspec'
require 'space_class'
require 'board_class'

describe Board do
  describe 'initialize' do
    it 'initializes a new instance of a board' do
      test_board = Board.new
      test_board.should be_an_instance_of Board
    end
  end

  describe '.create' do
    it 'creates nine spaces and puts them in the spaces array for that instance of board' do
      test_board = Board.create
      test_board.spaces.length.should eq 9
    end
  end

end
