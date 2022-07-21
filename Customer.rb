class Customer
    def initialize(id,name,age)
        @id=id
        @name=name
        @age=age
    end
end

obj=Customer.new(1,"abc",21)
puts(obj.id+" "+obj.name+" "+obj.age)
obj1=Customer.new(2,"pqr",22)
puts(obj1.id+" "+obj1.name+" "+obj1.age)

