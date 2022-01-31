class Turn

  def initialize(player)
    @player = player
  end

  def run
    puts "Question for #{@player.name}"
    if (Question.new.ask_question)
      @player.score +=0
    else
      @player.score -=1
    end
  end
end
