class Abc
    def setHeight=(h)
        @height=h

    end 
    def setBreadth=(b)
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
a.setBreadth = 20
a.setHeight = 10
puts a.getBreadth
puts a.getHeight