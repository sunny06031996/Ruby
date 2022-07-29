module UserModule

    def nameValid(firstName)
        if $firstName =~/^[a-zA-Z\-\`]++(?: [a-zA-Z\-\`]++)?$/
            return true
        end
    end

    def dateValid(date)
        if $date=~/^(3[01]|[12][0-9]|0[1-9])/(1[0-2]|0[1-9])/[0-9]{4}$/
            return true
        end
    end        

    def emailValid(email)
        if $email =~/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
            return true
        end
    end

    def passValid(password)
        if $password =~/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/
            return true
        end
    end

end


class SignUp
  include UserModule
  def userSignUp
     puts"Enter First Name"
     $firstName = gets.chomp
     if nameValid($FirstName)
        puts "valid"
     else
        puts "invalid"
     end

     puts"Enter last Name"
     $lastName = gets.chomp
     if nameValid($lastName)
        puts "valid"
     else
        puts "invalid"
     end

     puts"Enter  dob"
     $dob = gets.chomp
     if dateValid($dob)
        puts "valid"
     else
        puts "invalid"
     end

     puts "Enter your email-id"
     $email = gets.chomp
     if emailValid($email)
        puts "valid"
     else
        puts "invalid"
     end

     puts "Enter Password"
     $password = gets.chomp
     if passValid($password)
        puts "valid"
     else
        puts "invalid"
     end

  end

  $userSignUp = SignUp.new

end