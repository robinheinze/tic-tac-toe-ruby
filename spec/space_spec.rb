require 'rspec'
require 'space_class'
require 'player_class'

describe Space do
  describe 'initialize' do
    it 'initializes a new instance of a space' do
      test_space = Space.new(1)
      test_space.should be_an_instance_of Space
    end
    it 'sets the space_id property' do
      test_space = Space.new(1)
      test_space.space_id.should eq 1
    end
  end

  describe 'mark_by' do
    it 'changes the marked_by property to the mark of the player passed in' do
      test_space = Space.new(2)
      test_player = Player.new('X')
      test_space.mark_by(test_player)
      test_space.marked_by.should eq 'X'
    end
  end
end
