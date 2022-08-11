require_relative "cricket.rb"
class Result
  def result(score_1,score_2,team1_name, team2_name)
    if(score_1 > score_2)
      puts "#{team1_name} Score::: #{score_1} \t\t\t #{team2_name} Score::: #{score_2} " 
      puts "#{team1_name} Win Match !!\n\n"
    elsif(score_2 >score_1) 
      puts "#{team1_name}  Score::: #{score_1} \t\t\t #{team2_name} Score::: #{score_2} " 
      puts "#{team2_name} Win Match !!\n\n"
    elsif (score_2 == score_1 )
      puts "#{team1_name} Score::: #{score_1} \t\t\t #{team2_name} Score::: #{score_2} " 
    
      puts "IT'S A TIE"
    end
  end
end
rs = Result.new
book = BookCricket.new
score_1 = book.score_1()
score_2 = book.score_2()
ps= Players.new
team1_name = ps.team1()
team2_name = ps.team2()
rs.result(score_1,score_2,team1_name, team2_name)
# rs.result(score, team_name)
