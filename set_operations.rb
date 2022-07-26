class SetOperations
    # @array1 = [ 2, 4, 5, 6, 7, 9, 1, 2, 4 ] 
    # @array2 = [ 2, 4, 5, 6, 9, 8, 0, 3, 3 ] 
    def init()
        @array1 = []
        @array2 = []
        puts "enter value for n"
        n = gets.chomp.to_i
        puts "Enter values for array1:"
        for i in 1..n
            @array1 << gets.chomp.to_i 
        end
        puts "Enter values for array2:"
        for j in 1..3
            @array2 << gets.chomp.to_i
        end
        puts "Array1: #{@array1}"+"\n";
        puts "Array2: #{@array2}";
    end
    def union
        op = @array1 | @array2
        puts "Result of Union Operation: #{op}";
    end
    def inter_section 
        op = @array1 & @array2
        puts "Result of InterSection Operation: #{op}";
    end
    def difference 
        op = @array1 - @array2
        puts "Results of Difference Operation: #{op}";
    end
    def a_compliment
        puts "enter value of num1:"
        @num1 = gets.chomp.to_i; 
        op = ~@num1;
        puts "Result of A's Compliment Operation: #{op}";
    end
    def cartesian_product()
        @a= []
        @b = []
        puts "value of A:"
        for i in 1..3
            @a << gets.chomp.to_i
        end
        puts "value of B:"
        for j in 1..2
            @b << gets.chomp.to_i
        end
        op = (@a).product (@b);
        puts "Result of Cartesian product result: #{op}";
    end

   
end
obj = SetOperations.new();
obj.init();
obj.union;
obj.interSection;
obj.difference;
obj.a_compliment;
obj.cartesian_product();




#Number of elemernts should be easily configurable
#reading input is duplicated many times.


