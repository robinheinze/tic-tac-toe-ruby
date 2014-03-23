require './lib/game_class'
require './lib/board_class'
require './lib/space_class'
require './lib/player_class'

@current_game
@turn_counter = 0

def start
  puts 'Who do you want to start first, X or O?'
  first_player = gets.chomp
  @current_game = Game.new
  if first_player == 'O'
    @current_game.change_turns
  end
  display_board
  play
end

def display_board
  [0,3,6].each do |index|
    puts "[#{@current_game.board.spaces[index].marked_by }] [#{@current_game.board.spaces[index+1].marked_by }] [#{@current_game.board.spaces[index+2].marked_by }]"
  end
end

def play
  @turn_counter += 1
  puts "Player #{@current_game.current_player.mark}: Enter the number of the space you want to chose"
  player_choice = gets.chomp
  puts "\n"

  @current_game.board.spaces[player_choice.to_i - 1].mark_by(@current_game.current_player)

  if @current_game.win?
    puts "Game over! Player #{@current_game.winner} wins!"
    exit
  elsif !@current_game.win? && @turn_counter == 9
    puts "Game over! You both lose."
    exit
  else
    @current_game.change_turns
    puts "\n\n"
    display_board
    puts "\n\n"
    play
  end
end

start
