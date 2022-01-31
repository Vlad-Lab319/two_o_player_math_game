class Question
    attr_accessor :arg1, :arg2, :check
  def initialize
    @arg1 = rand(100) + 1
    @arg2 = rand(100) + 1
    @check = arg1 + arg2
  end
  
  def ask_question
    puts "What does #{arg1} plus #{arg2} equal?"
    answer = gets.chomp.to_i
    puts "Answer #{answer}"
    puts "Check #{check}"
      
  end
    
    
end

question1 = Question.new
question1.ask_question