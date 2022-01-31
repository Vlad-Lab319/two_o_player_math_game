require "./Player"
require "./Question"
require "./Turn"


class Game
  
  GAME_TITLE = "------ TwO-O-Player Math Game ------"

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @players = [@player1, @player2]
    
  end

  def start
    puts GAME_TITLE
    puts "player1 #{@player1.name}"
    puts "player2 #{@player2.name}"
    stop = false
    while !stop do 
      @players.each{|player|
        turn = Turn.new(player)
        turn.run
        if player.score == 0
          stop = true
          break if stop
        end
        puts "#{@player1.name}: #{@player1.score}/3 vs #{@player2.name}: #{@player2.score}/3"
      }
    end
    game_over
  end

  def game_over
    @players.each{|player|
      if player.score != 0 
        puts "#{player.name} wins with a score of #{player.score}/3"
        puts "------ GAME OVER ------"
      end}
  end
  
end

game = Game.new("Artem", "Papa")

game.start