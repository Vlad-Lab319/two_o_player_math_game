require "./Player"
require "./Question"

class Turn

  def initialize(player)
    @player = player
  end

  def run
    puts "Question for #{@player.name}"
    if (Question.new.ask_question)
      @player.score +=1
    else
      @player.score -=1
    end
    puts "Total score: #{@player.score}"
  end
end

player1 = Player.new("Bob")

turn = Turn.new(player1)
turn.run