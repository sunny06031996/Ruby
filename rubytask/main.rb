$LOAD_PATH << '.'
require 'user_sign_up'
require 'user_log_in'
require 'csv'

while 1
  puts " Welcome  "
  puts "press 1 for Sign up"
  puts "press 2 for login"
  
  puts "please enter your choice***********************************"
  $answer = gets.chomp.to_i
  case $answer
    when 1
      $userSignUp.userSignUp
    when 2
      $userlogin.userlogin
    break
  end
end

