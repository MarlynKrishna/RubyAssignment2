require 'humanize'
class FileOperations
  def convert_num_to_word
      set1 = ["","one","two","three","four","five","six","seven",
       "eight","nine","ten","eleven","twelve","thirteen",
       "fourteen","fifteen","sixteen","seventeen","eighteen",
       "nineteen"]

      set2 = ["","","twenty","thirty","forty","fifty","sixty",
       "seventy","eighty","ninety"]
      f= File.open("num.txt", "r+") if File.exist?("num.txt")
      out = File.open("word.txt", "w+")
      lines = f.readlines
       for i in 0...lines.length
         
          number = lines[i].to_i
          thousands = number / 1000
          hundreds = ((number%1000) / 100)
          tens = ((number % 100) / 10)
          ones = number % 10
          str = " "
          str+= str+number.humanize
          out.puts str
      end
      puts "\n\n"
      out.close
      puts File.read("num.txt")
      if File.exist?("word.txt")
      puts "Successfully converted and replaced the files"
      else 
        puts "We are sorry the given numbers haven't changed"
      end
  end
end

obj = FileOperations.new
obj.convert_num_to_word