

def yield_method
	puts "yield method code "
	yield
end	
yield_method{puts "Enject code "}

#yield with argument

def yield_block
	puts "yield method call"
	yield 2*3
	puts "yield block"
	yield 1000
end	
yield_block{|i| puts "outside #{i}"}


#Yield with return value

def yield_with_return_value
	abc=yield
	puts abc
end	
yield_with_return_value{"welcome"}

