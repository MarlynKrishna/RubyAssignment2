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

#For calculating Student marks, please think of writing code with minimal changes for the future changes
#say for example what if the user wants to add an extra subject and its marks
#with the current approach, we need to change code at reading input/ initializing/ calculating total, in almost all stages
#you can use something like this : [1,2,3].inject(0){|sum, marks| sum = sum + marks} instead of summing all of them individually
#and there is an *args param, think of it how we can use that in this scenario.
