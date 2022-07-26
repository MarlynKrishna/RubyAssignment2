require 'date' 
class DateFormat 
  def format()
    puts "enter value for date"
       @date = gets.chomp.to_s
    puts "enter value for type"
        @type = gets.chomp.to_s
        
        if @type == 'IST' 
          puts Date.parse(@date).strftime("%d/%m/%Y") 
          puts Date.parse(@date).strftime("%-d %B, %Y %Z") 
          puts Date.parse(@date).strftime("%B %-d, %Y %Z") 
          puts Date.parse(@date).strftime("%B %-d, %Y") 
          puts Date.parse(@date).strftime("%Y-%m-%d")  
          puts Date.parse(@date).strftime("%m/%d/%y")  
        elsif @type == 'ORT' 
          puts "conversion to ORT"
          puts Date.parse(@date).strftime("%Y-%m-%d %H:%M:%S %z") 
          puts Date.parse(@date).strftime("%Y-%m-%d %H:%M:%S %Z") 
          puts Date.parse(@date).strftime("%Y/%m/%d %I:%M:%S %p") 
          puts Date.parse(@date).strftime("%m/%d/%Y %I %p") 
          puts Date.parse(@date).strftime("%Y/%m/%d %H:%M:%S") 
        else @type == 'PST' 
          puts "Default conversion to PST"
          puts  Date.parse(@date).strftime("%m/%d/%Y")
        end
  end
end
obj = DateFormat.new;
obj.format();
