module UserModule

    def nameValid(firstName)
       if @firstName =~/^[a-zA-Z\-\`]++(?: [a-zA-Z\-\`]++)?$/
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


class SignUp

  include UserModule

  def userSignUp
     puts"Enter firstName"
     @firstName = gets.chomp
     if nameValid(@firstName)
        puts "valid"
     else
        puts "invalid"
     end

     puts"Enter lastName"
     @firstName = gets.chomp
     if nameValid(@lastName)
        puts "valid"
     else
        puts "invalid"
     end

     puts "Enter your email-id"
     @email = gets.chomp

     if emailvalid(@email)
        puts "valid"
     else
        puts "invalid"
     end

     puts "Enter Password"
     @password = gets.chomp

     if passvalid(@password)
        puts "valid"
     else
        puts "invalid"
     end

  end

  def display

  end  

  $user_sign = SignUp.new

end
   
        

    
    

    

