require_relative "players_to_select.rb"
class Players 

    def select_players(p_list,round)
        @@round = round
        @@p_list = p_list
        # team_players
    
        @final_list=[]
    
    
        def search(num) 
            
                if @@p_list.key?(num)==true
                    @a=@@p_list.fetch(num)
                    puts "Player Name  is #{@a}"
                    puts "\n"
                    @final_list << @a
                    # @@for_captain1 = @final_list1 
                else
                    puts "Sorry num is not found in the @players_list1 \n\n"
                end
                
                if @@round == 1
                    @@for_captain1 =@final_list
                else
                    @@for_captain2 = @final_list
                end
        
        
        end
        
            puts "Enter Number of players  for team"
            @players = gets.to_i
        
                for i in 0..@players-1
                    puts "Select player " + (i+1).to_s
                    num=gets.strip
                    search(num)
                end
                # $for_captain = @final_list + (i+1).to_s
            puts "Final List::#{@final_list}" 
            puts "\n\n"

    end
   
    def select_captain 
        
    
    @@d = {}
    @pt = {}
        puts "teams list to play :: #{$teams_to_play}"
        puts "list of palyers in team1 :: #{@@for_captain1}"
        puts "list of palyers in team2 :: #{@@for_captain2}"
        @@d[$teams_to_play[0]]=@@for_captain1
        @@d[$teams_to_play[1]]=@@for_captain2
        
        puts @@d
        puts "\n\n"
        @@team1_captain = @@d[$teams_to_play[0]][rand(@@d[$teams_to_play[0]].count)]
        puts "#{$teams_to_play[0]} Captain is:: #{@@team1_captain}"
        @@team2_captain = @@d[$teams_to_play[1]][rand(@@d[$teams_to_play[1]].count)]
        puts "#{$teams_to_play[1]} Captain is:: #{@@team2_captain}"
        puts "---------------------------------------------"
        
    end

    def tos
        puts "Here is the toss"
        # order = gets.chomp.to_i
        @captain_to_toss = [@@team1_captain, @@team2_captain]
        @toss =["Heads","Tails" ]
        rand_toss= @toss[rand(@toss.count)] 
        puts "#{rand_toss}"
        if(@captain_to_toss== @@team1_captain && rand_toss == "Heads" )
            puts "#{$teams_to_play[0]}'s #{@@team1_captain }  won the toss"
            puts "Your team is going to play"
            @@batting_team = @@for_captain1
            @@bowling_team =@@for_captain2
            @@team1_name = $teams_to_play[0]
            @@team2_name = $teams_to_play[1]
            puts @@batting_team
            puts @@bowling_team
            puts "\n\n"
        else
            
            puts "#{$teams_to_play[1]}'s #{@@team2_captain }  won the toss"
            
            puts "#{$teams_to_play[1]}'s team is going to play first"
            @@batting_team = @@for_captain2
            @@bowling_team = @@for_captain1
            @@team1_name = $teams_to_play[1]
            @@team2_name = $teams_to_play[0]
            puts "Batting team:: #{@@batting_team}"
            puts "Bowling Team:: #{@@bowling_team}"
            puts "\n\n"
        end
    end
    def balls()
        return $balls
    end 
    def batting()
        return @@batting_team
    end
    def bowling() 
        return @@bowling_team
    end 

    def team1()
        return @@team1_name
    end
    def team2()
        return @@team2_name
    end
    def lb(list) 
        puts  list 
    end
end
ob = Players.new
ps = Player.new 
p_list1 = ps.list1()
p_list2 = ps.list2()
ob.lb(p_list1)
ob.lb(p_list2)
ob.select_players(p_list1,1)

ob.select_players(p_list2,2)
ob.select_captain
ob.tos