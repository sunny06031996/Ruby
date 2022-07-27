require 'csv'

module LoginModule
  class EmployLogIn
    def emailvalid(email)
      if $email =~/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
        return true
      end
    end

    def passvalid(password)
      if $password =~/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/
        return true
      end
    end
end

class LogIn
   include LoginModule

    def userlogin

     puts"Enter Username"
     $uname = gets.chomp
     puts "Enter Password"
     $pwd = gets.chomp
   end

   
   def log_in
       if $name == $uname && $password == $pwd
         puts "succesfully login"
       else
         puts "invalid credentials."
       end

     end
  end
      
    $userlogin = LogIn.new
      
end

