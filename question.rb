class Question
  #Generate random numbers
  #Use those numbers to input into question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def ask_questions()
    puts "#{}: What does #{@num1} plus #{@num2} equal?"
    print "> "
  end

  def check_answer(player_answer)
    if (@answer == player_answer)
      return true
    else 
      return false
    end

  end
end



