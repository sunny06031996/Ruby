def add_method
	a=0
	while a<=15
		puts "@@@@@@#{a}"
		sleep(1)
		a+=1
	end	

end

def sub_method
	a=20
	while a>0
		puts "$$$$$$$$$$$$$#{a}"
		sleep(1)
		a-=1
	end	
end	

x=Thread.new{add_method()}
y=Thread.new{sub_method()}
x.join()
y.join()
puts "Process End"