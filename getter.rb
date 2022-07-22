class Abc
    def initialize(height,breadth)
        @height=height
        @breadth=breadth
    end
    def getHeight
        return @height
    end
    def getBreadth
        return @breadth
    end
end

a=Abc.new(5,6)
puts a.getHeight
puts a.getBreadth

