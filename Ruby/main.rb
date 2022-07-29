$LOAD_PATH << '.'
require 'sign_up'
sign=SignUp.new
while 1
  puts "  Welcome "
  puts "press 1 for Sign up"
  puts "*press 2 for login*"
  puts "*press 3 for logout*"
  puts "***please enter your choice***"
  answer = gets.chomp.to_i
  case answer
   when 1
    sign.sign_up
   when 2
    login
    break
  end
end

