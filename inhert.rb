class Inhert
    @inst_var="I am good"
    @@class_var="I have one task"
    def initialize
        @a=12
    end
    # def initialize(name, age)
    #     @name=name
    #     @age=age
        
    # end  
 
    def self.class_method
        puts "Inside class method"
        puts @inst_var
        puts @@class_var  
    end    
    # def instance_method
    #     puts "Inside instance method"
    #     puts ("Hi instance:inst_var}")
    #     puts @name
        
    # end 
      
end
Inhert.class_method

a=Inhert.new
#a.instance_method
#b=Inhert.new("sunny",12)
#  b.instance_method





