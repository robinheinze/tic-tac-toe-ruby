require 'rspec'
require 'space_class'
require 'player_class'

describe Player do
  describe 'initialize' do
    it 'initializes a new instance of a player' do
      test_player = Player.new('X')
      test_player.should be_an_instance_of Player
    end
    it 'sets the mark property' do
      test_player = Player.new('X')
      test_player.mark.should eq 'X'
    end
  end

end
