class Var 
    def instance_method
        @a=24
        @a=30
        _a=10
        _a=20
        @@b=33
        puts("Inside instance  :#@a")
        puts("Class var :#@@b")
        puts(_a)
        
    end
    def instance_method2
        @a=21
        @a=30
        puts("Inside instance  :#@a")
        puts("Class var :#@@b")
        
       
       
    end
    
    def self.class_method
        @a=240
        @@b=33
        puts("Inside instance  :#@a")
        puts("Class var :#@@b") 
       
    end    
end


Var.class_method  
a=Var.new
a.instance_method 
a.instance_method2 
puts (a.class) # name of the class 

