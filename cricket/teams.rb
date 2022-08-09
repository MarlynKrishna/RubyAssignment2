# 6require_relative "Players.rb"
class CricketTeams 
  def choose_team 
    @teams = Hash.new
    @teams = {
      "1" => "Australia", 
      "2" => "England", 
      "3"  => "India",
      "4" => "South Africa",
      "5" => "New Zealand", 
      "6"  =>  "Pakistan", 
      "7" => "Bangladesh",
      "8" => "Srilanka", 
      "9"  =>  "West Indies"
    }
  end
    # puts @teams.sort
  def team_select_operations
    choose_team
    def search(num)
     
        if @teams.key?(num)==true
          @a = @teams.fetch(num)
            puts "selected team is #{@a}"
            puts "\n\n"
        else
          puts "sorry you chose wrong country\n\n"
        end
    
    end
    def add(num,country )
      @teams[num]=country
      puts "\n"
      puts @teams.sort
      puts "\n\n"
    end
    def update(num, country)
      if @teams.key?(num)==true
        @teams[num]=country
        puts "country is updated" 
        puts @teams.sort
        puts "\n\n"
      else
        puts "'given num is not found in the list \n\n"
      end     
    end
    def del(num)
      if @teams.key?(num)==true
          @teams.delete(num)
          puts "Deleted the num from the team"
          puts @teams.sort
      else
          puts "Sorry num is not found in the list"
      end
    end
    x=0
        while x!=6
            puts "Choose from the teams list"
            puts "1. View the content of teams"
            puts "2. select the teams to play"
            puts "3. Add a num "
            puts "4. Update a num"
            puts "5. Delete a num"
            puts "6. Exit"
            x=gets.to_i
            case x
                when 1
                  @country_list = [ @teams]
                    puts @country_list
                when 2
                  @teams_list = []
                  # puts "select num of teams to play"
                  @b= 2
                  for i in 0..@b-1
                    puts "Select teams " + (i+1).to_s
                    num=gets.strip
                    search(num)
                    @teams_list << @a
                    $teams_to_play= @teams_list
                  end
                 puts  "Teams List :: #{@teams_list}"
                 puts " thank you!, You have selected teams to play "
                 puts "\n\n"
                  break
                when 3
                    puts "Enter the num to be added"
                    num=gets.strip
                    puts "Enter the country of the num #{num}"
                    country=gets.strip
                    add(num,country)
                when 4
                    puts "Enter the update num"
                    num=gets.strip
                    puts "Enter the updated country of a num #{num}"
                    updated_country=gets.strip
                    update(num,country)
                when 5
                    puts "Enter the num to be deleted from the list"
                    num = gets.strip
                    del(num)
                when 6
                    puts " thank you!, You have selected teams to play "
                else
                puts " Enter a valid value "
            end
        end
  end
end

cg = CricketTeams.new
cg.choose_team
cg.team_select_operations
# cg.tos
