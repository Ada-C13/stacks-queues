require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  stack = Stack.new
  string.each_char do |char|
    if char == "(" || char == "{" || char == "["
      stack.push(char)
    else
      if stack.empty?
        return false 
      else
        last = stack.pop
        if char == ")"
          return false if last != "("
        elsif char == "}"
          return false if last != "{"
        elsif char == "]"
          return false if last != "["
        end
      end
    end
  end
  return stack.empty?
end

# Time Complexity: O(n)
# Space Complexity: O(1)
def evaluate_postfix(postfix_expression)
  stack = Stack.new
  numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  postfix_expression.each_char do |char|
    if numbers.any? char
      stack.push(char)
    else #assuming string is comprised of numbers and operatprs only
      number2 = stack.pop
      number1 = stack.pop
      result = number1.to_i.public_send(char, number2.to_i)
      stack.push(result)
    end
  end
  return stack.pop
end
