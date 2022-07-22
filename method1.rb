class Abc

    public 

    def publicMethod()
        _a=10
        @a=20
        @@a=30
        puts(_a)
        puts(@a)
        puts("abc: #@@a")
        puts("public method")
    end
    
    private
    def privateMethod()
        _a=20
        puts(_a)
        puts("private method")
    end    
end 
class Mnp <Abc
    public
    def publicMethod()
        @a=20
        @@a=20
        puts(@a)
        puts("mnp : #@@a")
        puts "Inside Mnp"
    end 

end    
a=Mnp.new
puts a.publicMethod();
puts a.privateMethod();
b=Abc.new
puts b.publicMethod
