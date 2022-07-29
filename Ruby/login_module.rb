require 'csv'
#require "/home/rails/Documents/tasks/sunny06031996/Ruby/Ruby/test2.csv"
module LoginModule
  
end  

class LoginClass
 
    def input
      puts "Enter Email"
      @email=gets.chomp
	    puts "Enter password"
	    @password=gets.chomp
	    puts "Enter  role" 
	    @role=gets.chomp
    end

    def login_hr

      input
      if(@email&&@password)
       
        get_data_from_csv

      end  
    end    

    def get_data_from_csv
      CSV.foreach('test2.csv') do |row|
      end     
    end




end
	
	


    






