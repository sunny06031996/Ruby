class Abc
    def setData(h,b)
        @height=h
        @breadth=b

    end 
   
    def getHeight
        return @height
    end
    def getBreadth
        return @breadth
    end               
end
a=Abc.new
a.setData(10,20)

puts a.getBreadth
puts a.getHeight
