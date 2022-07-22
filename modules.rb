module Abc
    C=10;
    def task
        puts "Js Task"
    end 
    def rubyTask
        puts "Ruby task"
    end          
end 

class Pqr
    include Abc
    def task2
        puts "Ruby task2"
    end    
end
puts Abc::C

a=Pqr.new
a.task
a.rubyTask
a.task2