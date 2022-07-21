class Student
     
    def initialize(id, name, age)
        @id=id
        @name=name
        @age=age
        @@count = 122
        @a=33;
    end
    def display_detail()
        
        puts "Student id:#@id"
        puts "Student name:#@name"
        puts "Student age:#@age"
        puts("instance :#{@a}")
    end 
    
    def display_count()
       puts "total no. of :#@@count"  
    end  
end
a=Student.new(1,"abc",31)
b=Student.new(2,"mnp",22)
c=Student.new(3,"pqr",33)
a.display_detail();
b.display_detail();
c.display_detail();
c.display_count();




