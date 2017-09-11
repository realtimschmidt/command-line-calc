def calc
  puts "Your calculator is ready! \nUse a space between numbers and operators \nEnter 'q' to quit."

  while true
    print ">>"
    str = gets.chomp.split(" ")
    return if str[0] == 'q'
    if str.length == 3
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
    elsif str.length == 5
      sum1 = nil
      if str[0].include? "."
        operand1 = str[0].to_f
      else
        operand1 = str[0].to_i
      end

      operator1 = str[1].to_sym

      if str[2].include? "."
        operand2 = str[2].to_f
      else
        operand2 = str[2].to_i
      end

      operator2 = str[3].to_sym

      if str[4].include? "."
        operand3 = str[4].to_f
      else
        operand3 = str[4].to_i
      end

      if operator1 == :* || operator1 == :/ || operator1 == :**

        case operator1
        when :+ then sum1 = operand1 + operand2
        when :- then sum1 = operand1 - operand2
        when :* then sum1 = operand1 * operand2
        when :/ then sum1 = operand1 / operand2
        when :** then sum1 = operand1 ** operand2
        else
          puts "invalid input"
        end

        case operator2
        when :+ then puts sum1 + operand3
        when :- then puts sum1 - operand3
        when :* then puts sum1 * operand3
        when :/ then puts sum1 / operand3
        when :** then puts sum1 ** operand3
        else
          puts "invalid input"
        end
      else
        case operator2
        when :+ then sum1 = operand2 + operand3
        when :- then sum1 = operand2 - operand3
        when :* then sum1 = operand2 * operand3
        when :/ then sum1 = operand2 / operand3
        when :** then sum1 = operand2 ** operand3
        else
          puts "invalid input"
        end

        case operator1
        when :+ then puts sum1 + operand1
        when :- then puts sum1 - operand1
        when :* then puts sum1 * operand1
        when :/ then puts sum1 / operand1
        when :** then puts sum1 ** operand1
        else
          puts "invalid input"
        end
      end
    elsif str.length == 7
      sum1 = nil
      sum2 = nil
      if str[0].include? "."
        operand1 = str[0].to_f
      else
        operand1 = str[0].to_i
      end

      operator1 = str[1].to_sym

      if str[2].include? "."
        operand2 = str[2].to_f
      else
        operand2 = str[2].to_i
      end

      operator2 = str[3].to_sym

      if str[4].include? "."
        operand3 = str[4].to_f
      else
        operand3 = str[4].to_i
      end

      operator3 = str[5].to_sym

      if str[6].include? "."
        operand4 = str[6].to_f
      else
        operand4 = str[6].to_i
      end

      if operator1 == :* || operator1 == :/ || operator1 == :**
        case operator1
        when :* then sum1 = operand1 * operand2
        when :/ then sum1 = operand1 / operand2
        when :** then sum1 = operand1 ** operand2
        else
          puts "invalid input"
        end

        if operator3 == :* || operator3 == :/ || operator3 == :**
          case operator3
          when :* then sum2 = operand3 * operand4
          when :/ then sum2 = operand3 / operand4
          when :** then sum2 = operand3 ** operand4
          else
            puts "invalid input"
          end

          case operator2
          when :+ then puts sum1 + sum2
          when :- then puts sum1 - sum2
          when :* then puts sum1 * sum2
          when :/ then puts sum1 / sum2
          when :** then puts sum1 ** sum2
          else
            puts "invalid input"
          end
        end

        case operator2
        when :+ then sum2 = sum1 + operand3
        when :- then sum2 = sum1 - operand3
        when :* then sum2 = sum1 * operand3
        when :/ then sum2 = sum1 / operand3
        when :** then sum2 = sum1 ** operand3
        else
          puts "invalid input"
        end

        case operator3
        when :+ then puts sum2 + operand4
        when :- then puts sum2 - operand4
        when :*
        when :/
        when :**
        else
          puts "invalid input"
        end
      elsif operator2 == :* || operator2 == :/ || operator2 == :**
        case operator2
        when :* then sum1 = operand2 * operand3
        when :/ then sum1 = operand2 / operand3
        when :** then sum1 = operand2 ** operand3
        else
          puts "invalid input"
        end

        case operator3
        when :+ then sum2 = sum1 + operand4
        when :- then sum2 = sum1 - operand4
        when :* then sum2 = sum1 * operand4
        when :/ then sum2 = sum1 / operand4
        when :** then sum2 = sum1 ** operand4
        else
          puts "invalid input"
        end

        case operator1
        when :+ then puts sum2 + operand1
        when :- then puts sum2 - operand1
        else
          puts "invalid input"
        end
      elsif operator3 == :* || operator3 == :/ || operator3 == :**
        case operator3
        when :* then sum1 = operand3 * operand4
        when :/ then sum1 = operand3 / operand4
        when :** then sum1 = operand3 ** operand4
        else
          puts "invalid input"
        end

        case operator2
        when :+ then sum2 = sum1 + operand2
        when :- then sum2 = sum1 - operand2
        else
          puts "invalid input"
        end

        case operator1
        when :+ then puts sum2 + operand1
        when :- then puts sum2 - operand1
        else
          puts "invalid input"
        end
      elsif operator1 == :+ || operator1 == :-
        case operator1
        when :+ then sum1 = operand1 + operand2
        when :- then sum1 = operand1 - operand2
        else
          puts "invalid input"
        end

        case operator2
        when :+ then sum2 = sum1 + operand3
        when :- then sum2 = sum1 - operand3
        else
          puts "invalid input"
        end

        case operator3
        when :+ then puts sum2 + operand4
        when :- then puts sum2 - operand4
        else
          puts "invalid input"
        end
      end

    end
  end
end

if __FILE__ == $0
  calc
end
