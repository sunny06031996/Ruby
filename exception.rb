# a=10/0
# puts a

 a=[1,2,3]
# puts a['abc']

begin
	#a["abc"]
	
	num=10/0
rescue ZeroDivisionError => e
	puts "class of this error : #{e.class.name}"
	puts "message of : #{e.message}"
	puts " blacktrace of this message#{e.backtrace}"
end	
