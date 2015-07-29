def roll_dice(score)
  roll = rand(1..6)
  if roll == 1
    score = 0
  else 
   score += roll
  end
  return score
end

def game
  score = 0
  decision = "roll"
  puts "First roll"
  
  while decision == "roll"
    score = roll_dice(score)
    if score == 0 
      puts "This is your final score #{score}"
      exit(0)
    end
    puts "Your score is: #{score}."
    puts "Type 'hold' to Hold or 'roll' to Roll Again."
    decision = gets.chomp
    while (decision != "roll" && decision != "hold")
      puts "That is not correct input. Type 'hold' to Hold or 'roll' to Roll Again."
      decision = gets.chomp
    end 
  end 
    if decision == "hold"
      puts "This is your final score #{score}."
    end 
end 

game


