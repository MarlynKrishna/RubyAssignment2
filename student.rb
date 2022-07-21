class Student
    def setStudentDetails()
        print "StudentID:   ";
        @rollNum = gets.strip
        print "Student name: ";
        @studName = gets.strip
        print "Student Maths Marks: ";
        @math_marks = gets.chomp.to_i
        print "Student Arts Marks: ";
        @arts_marks = gets.chomp.to_i
        print "Student Bioolgy Marks: ";
        @bio_marks = gets.chomp.to_i

  
        def total_marks()
           @total =  @math_marks +  @arts_marks + @bio_marks;
           
        end
        def displayStudDetails
            puts "\n"
            puts "Details of the student:: "+"\n"
            puts "Student Id: #{@rollNum}"
            puts "Student Name:  #{@studName}"
            puts "total marks of #{@studName}: #{@total}"
        end

    end


end
stu = Student.new();
stu.setStudentDetails();
stu.total_marks();
stu.displayStudDetails;

