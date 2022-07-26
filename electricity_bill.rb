class ElectricityBill 
   
    def calculation
       puts "enter value for n"
       n = gets.chomp.to_i
        for i in 1..n
            print "Units: ";
            @units = gets.chomp.to_i;
            if @units <= 100 
            @bill = (@units * 6) + 50;
            puts "Calculated Electricity Bill is: #{@bill}";
            
            elsif @units <= 200
                @bill = ((100 * 10) + (@units - 100) * 11) +50 ;
                puts "Calculated Electricity Bill is: #{@bill}";
                        
        
            else @units <= 300 
                @bill = ((100 * 10)+ (100 * 15)+ (@units - 200) * 15) + 50;
                puts "Calculated Electricity Bill is: #{@bill}";
                        
            end
            if (@bill >= 300)
    
                x =(@bill - 300) * 0.15
          
                y = x + @bill
          
                puts "Toatl amount with 15% extra :#{y}"
          
              end
        end
    end
    # def mode

    #     if (@bill >= 300)
    
    #       x =(@bill - 300) * 0.15
    
    #       y = x + @bill
    
    #       puts "Toatl amount with 15% extra :#{y}"
    
    #     end
    
    #   end
end
obj = ElectricityBill.new();
obj.calculation;







#Code should be modulirized to seperate methods, 
#15% additional charge calculation should be to seperate method and UNIT PRICES should be taken into CONSTANST or shpould be easily configurable

#The logic needs to improved
