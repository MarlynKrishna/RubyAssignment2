require_relative "teams.rb"
class Players 
  def team_players 
        @players_list1 = Array.new 
        @players_list2 = Array.new 
        
        @players_list1 ={
        "1" => "Dhoni",
        "2" => "Kohli",
        "3" => "Rohit",
        "4" => "S.Yadav",
        "5" => "Samson",
        }
       
        @players_list2 = {
            "1" => "Hardik",
            "2" => "Jadeja",
            "3" => "Shardul",
            "4" => "Buvaneswar",
            "5" => "Deepak",
            "6" => "Bumrah"
        }
        
    end
   
    def operations
        team_players
        def search(num1)
            
            if @players_list1.key?(num1)==true
                a=@players_list1.fetch(num1)
                puts "Player Name  is #{a}"
                puts "\n"
            else
                puts "Sorry num is not found in the @players_list1 \n\n"
            end
        end
        # puts "for list2"
        def search(num2)
            
            if @players_list2.key?(num2)==true
                c=@players_list2.fetch(num2)
                puts "Player Name  is #{c}"
                puts "\n"
            else
                puts "Sorry num is not found in the @players_list2 \n\n"
            end

        end

        def add(num,player_name)
            @players_list1[num]=player_name
            puts "\n"
            puts @players_list1.sort
            puts "\n\n"
        end

        def update(num, player_name)
            if @players_list1.key?(num)==true
                @players_list1[num]=player_name
                puts "num is updated in the players_list "
                puts @players_list1.sort
                puts "\n\n"
            else
                puts "Sorry num is not found in the players list \n\n"
            end
        end

        def del(num)
            if @players_list1.key?(num)==true
                @players_list1.delete(num)
                puts "Deleted the num from the players list"
                puts @players_list1.sort
            else
                puts "Sorry num is not found in the players list"
            end
        end
    end

        x=0
        while x!=7
            puts "Choose from the playerslist"
            puts "1. View the content of players list"
            puts "2. select players for team1"
            puts "3. select players for team2"
            puts "4. Add a players to the list"
            puts "5. Update a player"
            puts "6. Delete a player"
            puts "7. Exit"
            x=gets.to_i
            case x
                when 1
                    @list1 = [ @players_list1]
                    puts @list1
                    @list2 = [@players_list2]
                    puts @list2
                when 2
                    puts "Search a num from list1"
                    num1=gets.strip
                    search(num1)
                when 3
                    puts "Search a num from list2"
                    num2=gets.strip
                    search(num2)
                when 4
                    puts "Enter the num to be added"
                    num=gets.strip
                    puts "Enter the player name of the num #{num}"
                    player_name=gets.strip
                    add(num,player_name)
                when 5
                    puts "Enter the update num"
                    num=gets.strip
                    puts "Enter the updated player name of a num #{num}"
                    updated_player_name=gets.strip
                    update(num,player_name)
                when 6
                    puts "Enter the num to be deleted from the @players_listionary"
                    num = gets.strip
                    del(num)
                 when 7
                    puts " thank you!, Have Fun!!!"
                else
                puts " Enter a valid value "
            end
        end
        
    def select_players
        team_players
        $final_list1=[]
        $final_list2=[]
        
        puts "Enter Number of players  for team1"
        @players = gets.to_i
       
            for i in 0..@players-1
                puts "Select player " + (i+1).to_s
                num1=gets.strip
                search(num1)
           
            # final_list[i] = gets.to_i
                if @players_list1.key?(num1)==true
                    @a=@players_list1.fetch(num1)
                    # puts " player name  is #{a}"   
                else
                    puts "Sorry num is not found in the @players_listionary \n\n"
                end
                $final_list1 << @a
               $for_captain1 = $final_list1 
            end
        
        puts "Final List:: #{$final_list1}"
        puts "\n\n"

        
        puts "Enter Number of players  for team2"
        @player = gets.to_i
       
            for j in 0..@player-1
                puts "Select player " + (j+1).to_s
                num2=gets.strip
                search(num2)
           
            # final_list[i] = gets.to_i
                if @players_list2.key?(num2)==true
                    @c=@players_list2.fetch(num2)
                    # puts " player name  is #{a}"   
                else
                    puts "Sorry num is not found in the @players_listionary \n\n"
                end
                $final_list2 << @c
                $for_captain2 = $final_list2 
             end
        
        puts "Final List:: #{$final_list2}"
        puts "\n\n"
        
    end

       
    def select_captain 
       @@d = {}
       @pt = {}
        puts "teams list to play :: #{$teams_to_play}"
        puts "list of palyers in team1 :: #{$for_captain1}"
        puts "list of palyers in team2 :: #{$for_captain2}"
        @@d[$teams_to_play[0]]=$for_captain1
        @@d[$teams_to_play[1]]=$for_captain2
        
        puts @@d
        puts "\n\n"
        $team1_captain = @@d[$teams_to_play[0]][rand(@@d[$teams_to_play[0]].count)]
        puts "#{$teams_to_play[0]} Captain is:: #{$team1_captain}"
        $team2_captain = @@d[$teams_to_play[1]][rand(@@d[$teams_to_play[1]].count)]
        puts "#{$teams_to_play[1]} Captain is:: #{$team2_captain}"
        puts "---------------------------------------------"
        
    end
    def tos
        puts "Here is the toss"
        # order = gets.chomp.to_i
        @captain_to_toss = [$team1_captain, $team2_captain]
        @toss =["Heads","Tails" ]
        $rand_toss= @toss[rand(@toss.count)] 
        puts "#{@rand_toss}"
        if(@captain_to_toss== $team1_captain && $rand_toss == "Heads" )
            puts "#{$teams_to_play[0]}'s #{$team1_captain } You won the toss"
            puts "Your team is going to play"
            @@batting_team = $for_captain1
            @@bowling_team =$for_captain2
            @@team1_name = $teams_to_play[0]
            @@team2_name = $teams_to_play[1]
            puts @@batting_team
            puts @@bowling_team
            puts "\n\n"
        else
            
            puts "#{$teams_to_play[1]}'s #{$team2_captain } You won the toss"
            
            puts "#{$teams_to_play[1]}'s team is going to play first"
            @@batting_team = $for_captain2
            @@bowling_team = $for_captain1
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

 
end 
obj = Players.new 
obj.team_players
obj.operations
obj.select_players
obj.select_captain
obj.tos
