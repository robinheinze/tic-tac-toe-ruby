require 'rspec'
require 'game_class'

  describe Game do
    describe 'initialize' do
      it 'initializes an instance of a game' do
        test_game = Game.new
        test_game.should be_an_instance_of Game
        test_game.board.spaces.length.should eq 9
        test_game.player1.mark.should eq 'X'
      end
    end

    describe 'change_turns' do
      it 'switches the current player to the other player' do
        test_game = Game.new
        test_game.change_turns
        test_game.current_player.should eq test_game.player2
      end
    end

    describe 'win?' do
      it 'returns true if three spaces in a row have the same mark' do
        test_game = Game.new
        test_game.board.spaces[0].mark_by(test_game.player1)
        test_game.board.spaces[1].mark_by(test_game.player1)
        test_game.board.spaces[2].mark_by(test_game.player1)
        test_game.win?.should eq true
        test_game.winner.should eq 'X'
      end
      it 'returns true if there is a diagonal win' do
        test_game = Game.new
        test_game.board.spaces[0].mark_by(test_game.player2)
        test_game.board.spaces[4].mark_by(test_game.player2)
        test_game.board.spaces[8].mark_by(test_game.player2)
        test_game.win?.should eq true
        test_game.winner.should eq 'O'
      end
    end

  end
