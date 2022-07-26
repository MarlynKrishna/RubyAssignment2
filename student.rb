class Student
    def set_student_details()
        print "StudentID:   ";
        @roll_num = gets.strip
        print "Student name: ";
        @stud_name = gets.strip
        print "Student Maths Marks: ";
        @math_marks = gets.chomp.to_i
        print "Student Arts Marks: ";
        @arts_marks = gets.chomp.to_i
        print "Student Bioolgy Marks: ";
        @bio_marks = gets.chomp.to_i
    end

  
        def total_marks()
           @total =  @math_marks +  @arts_marks + @bio_marks;
           
        end
        def display_stud_details
            puts "\n"
            puts "Details of the student:: "+"\n"
            puts "Student Id: #{@rollNum}"
            puts "Student Name:  #{@studName}"
            puts "total marks of #{@studName}: #{@total}"
        end

   


end
stu = Student.new();
stu.set_student_details();
stu.total_marks();
stu.display_stud_details;

