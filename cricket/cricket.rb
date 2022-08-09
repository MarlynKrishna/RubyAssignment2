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
  end
  def game()
    puts "to balls to play #{$balls}"
    while(true)
          @p1_score=0
          @p2_score=0
          @p1_round=0
          @p2_round=0
          @score_card2 = []
          @score_card1 = []
          puts "Enter 1 To Start Game And 0 For Exit : "
          choice = gets.chomp.to_i
          if(choice == 0)
              break
          end
          
          while(true)
            
            
            @game1 = $final_list1
           
            puts "Player : #{$for_captain1}"
            puts "Enter 1 To Open Book : "
            order=gets.chomp.to_i()
            for @i in 0..@game1.size()-1
                for @p1_round in 0..5
                    pageNum=rand(20)+1 
                    @points=pageNum%10
                  
                    @p1_score += @points
                    @p1_round+=1
                    if(@points==0)
                      puts "!!!\t\tOPPS\t\t!!!"
                    end
                    puts "Page Number #{pageNum}  \t\t\tPoint : #{@points} \t\t\tScore : #{@p1_score}"
                    
                    if(@points==0)
                      
                      break
                    end   
                end
                puts "#{$for_captain1[@i]} Total Score : #{@p1_score}"
                puts "#{$for_captain1[@i]} Takes #{@p1_round} Rounds "
                @sc =  "#{$for_captain1[@i]} : #{@p1_score}"
                @score_card1 << @sc
                @i+=1
            end
              puts "#{$teams_to_play[0]} Total Score : #{@p1_score}"
              puts "Score Card of team1 #{@score_card1} "
              break
          end
            
          puts "\n#{$teams_to_play[1]}  team Needs #{@p1_score+1} Score In #{@p1_round} Rounds To WIN MATCH\nPlayer : #{$for_captain2}"
         
          while(true)
            @game2 = $final_list2
            
            puts "Enter 1 To Open Book : "
            order=gets.chomp.to_i()
            for @j in 0..@game2.size()-1
                for @p2_round in 0..5
                    pageNum=rand(20)+1 
                    @points=pageNum%10
                  
                    @p2_score += @points
                    @p2_round+=1
                    if(@points==0)
                      puts "!!!\t\tOPPS\t\t!!!"
                    end
                    puts "Page Number #{pageNum}  \t\t\tPoint : #{@points} \t\t\tScore : #{@p2_score}"
                    
                    if(@points==0 || @p2_score>@p1_score)
                      break
                    end
                end
                puts "#{$for_captain2[@j]} Total Score : #{@p2_score}"
                puts "#{$for_captain2[@j]} Takes #{@p2_round} Rounds "
                @st =  "#{$for_captain2[@j]} : #{@p2_score}"
                @score_card2 << @st
                @j+=1
            end
              puts "#{$teams_to_play[1]} Total Score : #{@p2_score}"
              puts "Score Card of team1 #{@score_card2} "
              
                # if(@p2_score>@p1_score )
                  puts "#{$teams_to_play[1]} Total Score : #{@p2_score}"
                    if(@p2_score>@p1_score) 

                      puts "#{$teams_to_play[1]} Win Match !!\n\n"
                    elsif(@p1_score>@p2_score) 

                      puts "#{$teams_to_play[0]} Win Match !!\n\n"
                    elsif (@p2_score==@p1_score) || ((@p1_score==@p2_score))
                      puts "IT'S A TIE"
                    end
               break  
         end           
    	end
  end            
end
cr = BookCricket.new
cr.book
cr.game()   
            
        
