class Calculator
  def evaluate(string)
    def clean(expr, i)
      expr.delete_at(i+1)
      expr.delete_at(i)
    end
    high_operations = ['/', '*']
    low_operations = ['+', '-']
    expr = string.split(' ')
    p expr
    expr.each_index do |i|
      p expr[i]
      if high_operations.include?(expr[i])
        while true
          if expr[i] == high_operations[0]
            expr[i-1] =  expr[i-1].to_i / expr[i+1].to_i
            clean(expr, i)
          elsif expr[i] == high_operations[1]
            expr[i-1] = expr[i-1].to_i * expr[i+1].to_i
            clean(expr, i)
          else
            break
          end
        end
      end
    end
    expr.each_index do |i|
      if low_operations.include?(expr[i])
        while true
          if expr[i] == low_operations[0]
            expr[i-1] =  expr[i-1].to_i + expr[i+1].to_i
            clean(expr, i)
          elsif expr[i] == low_operations[1]
            expr[i-1] = expr[i-1].to_i - expr[i+1].to_i
            clean(expr, i)
          else
            break
          end
        end
      end      
    end
    return expr[0].to_i
  end
end

p Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # => 7
