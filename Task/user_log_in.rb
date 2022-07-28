require 'csv'
module LoginModule
  class EmployLogIn
    

  end
  def namevalid(name)
     if @name =~/^[a-zA-Z\-\`]++(?: [a-zA-Z\-\`]++)?$/
      return true
     end
    end

    def emailvalid(email)
      if @email =~/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
       return true
      end
    end

    def passvalid(password)
      if @password =~/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/
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
      $lg1 = LogIn.new
      $li = LogIn.new
      $m1 = LogIn.new
end

class LogOut
   include LoginModule
   def userlogouttime
      emplog2 = EmployLogIn.new
      case emplog2
      when:out_time.to_proc
      puts "you are log out at #{$t2}"
      end
   end
   $lg2=LogOut.new

end