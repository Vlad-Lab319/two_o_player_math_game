require "./Player"
require "./Question"
require "./Turn"


class Game
  
  GAME_TITLE = "Two O Player Math Game"

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def start
    puts "player1 #{@player1.name}"
    puts "player2 #{@player2.name}"
  end

end

game = Game.new("Garry", "Bill")

game.start