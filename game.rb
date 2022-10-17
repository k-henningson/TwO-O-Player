class Game

  attr_accessor :player_1
  attr_accessor :player_2

  def initialize()
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @current_player = @player_1
  end

  def start_game
    puts "Get ready to play #{@player_1.name} and #{@player_2.name}!"
    while check_lives 
    turn
    end
  end

  def turn
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
    puts "----- NEW TURN -----"
    question = Question.new
    question.ask_questions
    player_answer = $stdin.gets.chomp.to_i
 
    if (question.check_answer(player_answer))
      puts "#{@current_player.name}: YES! You are correct."
    else 
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.remove_life
    end
      #swap which play is current player
    if @current_player == @player_1
      @current_player = @player_2
    else 
      @current_player = @player_1
    end

  end

  def check_lives
    if @player_1.lives <= 0
      puts "#{@player_2.name} wins with a score of #{@player_2.lives}/3"
      puts "---- GAME OVER ----"
      puts "Good bye!"
      exit(0)
  end
  if @player_2.lives <= 0
    puts "#{@player_1.name} wins with a score of #{@player_1.lives}/3"
    puts "---- GAME OVER ----"
    puts "Good bye!"
    exit(0)
  end
  return true
end
  
end






