require 'ostruct'
person =OpenStruct.new("name" => "abc","age" => 21)
puts person[:name]
puts person[:age]

puts person.class