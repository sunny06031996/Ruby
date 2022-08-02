# proc_obj=Proc.new{
# 	puts "I am good "
# }
# proc_obj.call

# proc_obj=proc{puts "proc object is check"}
# proc_obj.call
# puts("is a proc object #{proc_obj.lambda?}")

# proc_obj=Proc.new{|x| x**2}
# puts proc_obj.call(3)

# def mult(fact)
# 	Proc.new{|n| n*fact}

# end
# a=mult(3)
# b=mult(5)
# puts a.call(9)
# puts a.call(b.call(4)) # 60

def proc_method
	proc_obj=Proc.new{return "proc ethod"}
	proc_obj.call
	"i am good"
end
puts proc_method

# def lambda_method
# 	lambda_obj=lambda{return "i am lambda "} 
# 	lambda_obj.call
# 	"i am good"
# end
# puts lambda_method






		


