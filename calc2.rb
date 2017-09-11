puts "Here's your calculator!"
puts "Enter your first value"
firstVal = gets.chomp
puts "Enter your operator"
operator = gets.chomp
puts "Enter your second value"
secondVal = gets.chomp

puts "#{firstVal} #{operator} #{secondVal} = #{firstVal.to_i operator.to_sym secondVal.to_i}"
