require_relative "teams.rb"
class Player 
  def team_players 
        @@players_list1 = Array.new 
        @@players_list2 = Array.new 
        
        @@players_list1 ={
        "1" => "Dhoni",
        "2" => "Kohli",
        "3" => "Rohit",
        "4" => "S.Yadav",
        "5" => "Samson",
        }
       
        @@players_list2 = {
            "1" => "Hardik",
            "2" => "Jadeja",
            "3" => "Shardul",
            "4" => "Buvaneswar",
            "5" => "Deepak",
            "6" => "Bumrah"
        }
        
    end
        
   
    def list1()
       
        return @@players_list1
    end
    def list2()
       
        return @@players_list2
        
    end
 
end 
obj = Player.new 
obj.team_players
# p_list1 = obj.list1()
# p_list2 = obj.list2()

# obj.operations
# obj.select_players(p_list1, p_list2)
# # obj.select_players(p_list2)
# obj.select_captain
# obj.tos
