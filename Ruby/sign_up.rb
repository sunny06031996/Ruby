require 'csv'
require 'byebug'

module SignUpModule

    def nameValid(first_name)
      if first_name=~/^[a-zA-Z\-\`]++(?: [a-zA-Z\-\`]++)?$/
        return true
      end  
    end  

  def emailValid(email)
    if email =~/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
      return true
    end  
  end  
  
  def passwordValid(password)
    if password =~/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/
      return true
    end  
  end
  
  def numberValid(salary)
    if salary =~/\A\d+\Z/
      return true
    end  
  end  

end  
class SignUp
  include SignUpModule
  attr_accessor :first_name, :last_name,:salary,:email,:phone,:role,:password ,:csv
  # def initialize(first_name,last_name,salary,email,phone,role)
  #     @first_name=first_name
  #     @last_name=last_name
  #     @salary=salary
  #     @email=email
  #     @phone=phone
  #     @role=role
  #     @password=password
  # end 
  # def initialize
  #   arr=[]
  # end  

 
  def sign_up
    puts"Enter firstName"
    @first_name = gets.chomp
    if nameValid(@first_name)
      puts "valid"
    else
      puts "invalid"  
    end 
    
  
    puts"Enter lastName"
    @last_name = gets.chomp
    if nameValid(@last_name)
      puts "valid"
    else
      puts "invalid"  
    end 
    
    puts"Enter email"
    @email = gets.chomp
    if emailValid(@email)
      puts "valid"
    else
      puts "invalid"  
    end  

    puts"Enter phone"
    @phone = gets.chomp
    if numberValid(@phone)
      puts "valid"
    else
      puts "invalid"  
    end 
    
    puts"Enter role"
    @role = gets.chomp
    if nameValid(@role)
      puts "valid"
    else
      puts "invalid"  
    end 

    puts"Enter salary"
    @salary = gets.chomp
    if numberValid(@salary)
      puts "valid"
    else
      puts "invalid"  
    end 
    
    puts"Enter password"
    @password = gets.chomp
    if passwordValid(@password)
      puts "valid"
    else
      puts "invalid"  
    end  
  end
  
  
  def store_data
    CSV.open('test2.csv',"a+") do |csv|
    # csv << ["first_name","last_name","email","phone","role","salary","password"]
    csv << ["#{@first_name}", "#{@last_name}", "#{@email}" ,"#{@phone}", "#{@role}", "#{@salary}","#{@password}"]
    puts "User register Successfully !"
    end 
  end

end







    
  



