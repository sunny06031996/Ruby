class Parent
    def initialize
        puts('Super initialize')
    end
    def super_method
        puts "Super method parent class"
    end

end 

class ChildClass <Parent
    def initialize
        puts "child initialized"
    end     
end      

Parent.new
obj=ChildClass.new
obj.super_method