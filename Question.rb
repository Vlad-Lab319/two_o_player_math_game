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
    if (check == answer) then
      puts "YES! You are correct."
      true
    else
      puts "Seriously? No!"
      false
    end
    return answer == check
  end
    
    
end

# question1 = Question.new
# # puts question1.inspect
# question1.ask_question