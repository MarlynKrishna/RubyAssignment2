require 'humanize'
class FileOperations
  def convert_num_to_word
      f= File.open("num.txt", "r+") if File.exist?("num.txt")
      out = File.open("word.txt", "w+")
      lines = f.readlines
       for i in 0...lines.length
          number = lines[i].to_i
          str = " "
          str+= str+number.humanize
          out.puts str
      end
      puts "\n\n"
      out.close
      puts File.read("num.txt")
      if File.empty?("word.txt")
        puts "We are sorry the given numbers haven't changed / you haven't given any input for the operation"
      else 
        puts "Successfully converted and replaced the files"
      end
  end
end

obj = FileOperations.new
obj.convert_num_to_word