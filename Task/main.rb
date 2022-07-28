$LOAD_PATH << '.'
require 'user_sign_up'
require 'user_log_in'

while 1
  puts "press 1 for Sign up*"
  puts "press 2 for login"
  puts "press 3 for logout"
  puts "please enter your choice***********************************"
  answer = gets.chomp.to_i
  case @answer
   when 1
    @user_sign.userSignUp
   when 2
   
  
   when 3
   
    break
  end

end


 save_file = CSV.open(filename, 'w+') do |csv|
      csv << ["emp_id"first_name", "last_name","salary","email"] if csv.count < 1
      csv << ["#{@emp_id}","#{@first_name}","#{@last_name}","#{@salary}","#{@email}"]
    end






