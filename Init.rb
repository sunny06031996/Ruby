class Vichile
    def initialize(id ,color ,name)
        @vich_id=id
        @vich_color=color
        @vich_name=name 
    end  
    def display
        
        puts(@vich_id)
        puts(@vich_color)
        puts(@vich_name)
        
    end
end
a=Vichile.new("1","red","bmw")
b=Vichile.new("2","blue","Audi")
a.display
b.display


