puts("-----------without parameter------------------------------->")
def func
    puts "I am function"
end
func

puts ("------with parameter--------------------------->")
def func(my_name)
    #puts "my name is "+ my_name
    puts "my name is #{my_name}"
end
func("abc")
func("mnp")
func(20)


puts("----------------Method  with default paramter--------------->")
def test(a="Java",b="Ruby")
    puts("programming language is #{a}")
    puts("programming language is #{b}")
end
test
test "c++","c"


puts ("------------------Returning value from method on ruby---------->")

def test
    i=10
    j=20
    k=30
    return i,j,k
end
x=test
puts x    
 



