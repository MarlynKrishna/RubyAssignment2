
require_relative "cricket_type.rb"
require_relative "players.rb"
class BookCricket 
  def book 
    puts "Welcome To BookCricketGame !!"
    puts "Rules for the Game : "
    puts "** Assume a book of 300 pages"
    puts "1. Player 1 opens the book to read a page number(example 87) (Randomly generated)"
    puts "2. If the page number is 87->87%10(%10 results in scorebetween 0-9)= 7 should be added to the score"
    puts "3. Player 1 continues and keeps adding to the score untill page number results in a 0 score"
    puts "4. Player 2 starts the game and tries to beat the score of player 1"
    puts "5. In case of a tie, check the number of turns(player with lesser turns is winner)"
    puts "6. Show the winner of the game"
    puts "\n\n"
  end
  def game(balls, team,team_name, innings)
        @@balls, @@team, @@team_name = balls, team,  team_name
      
    puts "Total Balls to play #{balls}"
          @@total_score=0
          @ball=0
          wickets = 0
          overs = 0
          @score_card2 = []
          @score_card1 = []
          puts "Team:: #{team_name}  Players :#{team}"
          puts "Enter 1 To Open Book : "
          order=gets.chomp.to_i()
          @current_player = team.shift
          for @ball in 1..@@balls do 
           
            pageNum=rand(20) 
            @points=pageNum%10      
            @@total_score += @points
            @ball.next    
            puts "Ball Num:: #{@ball}"
            puts "Points : #{@points}    Score : #{@@total_score}"  
            if(@points==0)
              puts "#{@current_player} player is out at  #{@ball}"
              puts "wickets :: #{wickets = wickets+1} "
              # puts "-------------------------------------------------------"
              puts "Players remaining are::  #{team.count} "
              puts "-------------------------------------------------------"
               @current_player = team.shift
            
            end
            if (@ball%6 == 0)
              
              puts "Over #{overs = overs+1} is completed  "
              puts "=================================="
            end
            # if @current_player.nil?

            #   puts "finished"
        
            #   break
        
            #  end

            
            if(@ball == $balls ||  @current_player.nil?)
              
              puts "game finished"
              break
            end
            # @current_player = team.shift
          end 
             puts "#{team_name} Total Score : #{@@total_score} in #{@ball} balls"
            puts "--------------------------------------------------------"
            # puts "\n#{team_name}  team Needs #{@total_score+1} Score In #{@ball} Rounds To WIN MATCH\nPlayer : #{team}"
            if(innings ==1)
              @@team_1_score = "#{@@total_score}"
              # puts @@team_1_score
            else
              @@team_2_score = "#{@@total_score}"
              # puts @@team_2_score
            end 
  end 
  def score_1()
    return @@team_1_score
  end 
  def score_2()
    return @@team_2_score
  end
end
cr = BookCricket.new
cr.book
pl= Players.new
balls = pl.balls()
team_1= pl.batting()
team_2= pl.bowling()
team1_name = pl.team1()
team2_name = pl.team2()
cr.game(balls, team_1, team1_name,1)   
cr.game(balls, team_2, team2_name,2)
# cr.scores()

            
        