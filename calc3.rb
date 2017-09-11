def calc
  puts "Your calculator is ready! \nUse a space between numbers and operators \nEnter 'q' to quit."

  while true
    print ">>"
    str = gets.chomp.split(" ")
    return if str[0] == 'q'
    if str[0].include? "."
      operand1 = str[0].to_f
    else
      operand1 = str[0].to_i
    end

    operator = str[1].to_sym

    if str[2].include? "."
      operand2 = str[2].to_f
    else
      operand2 = str[2].to_i
    end

    case operator
    when :+ then puts operand1 + operand2
    when :- then puts operand1 - operand2
    when :* then puts operand1 * operand2
    when :/ then puts operand1 / operand2
    when :% then puts operand1 % operand2
    when :** then puts operand1 ** operand2
    else
      puts "invalid input"
    end
  end
end

if __FILE__ == $0
  calc
end
