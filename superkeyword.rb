class Parent

	def hello
		puts "say hello"
	end	


end	

class Child <Parent
	def hello()
		super

		puts "say child hello"
	end	

end	
a=Child.new
a.hello()

