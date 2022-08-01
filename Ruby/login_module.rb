require 'csv'
module LoginModule
  
end  

class LoginClass
 
    # def input
    #   
	  #   puts "Enter  role" 
	  #   @role=gets.chomp
    # end

    # def login_hr

    #   input
    #   if(@email&&@password)
       
    #     get_data_from_csv
        

    #   end  
    # end    
    def get_data_from_csv
      puts "Enter Email"
      @email=gets.chomp
      puts "Enter password"
       @password=gets.chomp

    CSV.foreach('data.csv', headers: true) do |row|
      data = row.to_h
      data.each do |key,value|
        if value == "hr"
          if data["email"] == @email && data["password"] == @password
           puts "Login Successfully..........."
           while 1
            puts "  Welcome "
            puts "press r for read"
            puts "*press u for update"
            puts "*press d for delete"
            puts "press c for create"
            puts "***please enter your choice***"
            answer = gets.chomp.to_s
            case answer
             when 'r'
              display_members
             when 'u'
              update_member
             
              break
            end
          end
          end
        end 
      end
    end 
  end
  def display_members
    CSV.foreach('data.csv', headers: true) do |row|
      if row["role"] == "hr" then
        next row
      end
       puts row.to_h
      #find_member
    end 

  end  
  
  def find_member
    puts "enter email"
    member_email = gets.chomp

    CSV.foreach('data.csv', headers: true) do |row|
      
      email = member_email.to_s
      if row["email"] == email
        empl_data=row.to_h
        byebug
        puts "emaployee data :#{empl_data}"
        CSV.open("test4.csv", "a+") do |new_csv|
          byebug
           new_csv << row
        end   
      end 
    end
    # update_member
  end

  def update_member
    CSV.foreach('data.csv', headers: true) do |row|
      byebug
      if row["role"] == "hr" then
        next row
        puts row.to_h
      end
    end 
  end

end
	
	


    






