class CricketType 

  def type(type)
    @type = type
    if @type == 'T20'
      overs = 3
      $balls = overs * 6
      puts $balls
      # Cricket.book
      # over[i] = 6
    elsif @type == 'ODI'
      overs = 50 
      $balls = overs * 6
      puts $balls
    elsif @type == 'TEST'
      overs = 90 
      $balls = overs * 6
      puts $balls
    end
    return $balls
    # ball = 18
    # ball
  end
 
end
puts "enter type of cricket T20/ODI/TEST"
type = gets.chomp.to_s
obj= CricketType.new 
obj.type(type)