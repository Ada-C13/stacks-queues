require_relative './stack.rb'

# Time Complexity: O(n) => because of iteration
# Space Complexity: O(n) => because I created a stack
def balanced(string)
  map = {"(" => ")", "[" => "]", "{" => "}"}
  stack = Stack.new

  string.each_char do |paren|
    if map[paren]
      stack.push(paren)
    else 
      if map[stack.pop] != paren 
        return false
      end 
    end 
  end

  return stack.empty?
end


def calculator(num1, num2, operator)
  if operator == "+"
    return num1 + num2
  elsif operator == "-"
    return num1 - num2
  elsif operator == "*"
    return num1 * num2
  elsif operator == "/"
    return num1 / num2
  end 
end 

# Time Complexity: O(n) => because of iteration
# Space Complexity: O(n) => because I created a stack
def evaluate_postfix(postfix_expression)
  stack = Stack.new
  operators = ["+", "-", "*", "/"]

  postfix_expression.each_char do |char|
    if !operators.include?(char) # if num
      stack.push(char)
    else 
      second_num = stack.pop.to_i
      first_num = stack.pop.to_i

      result = calculator(first_num, second_num, char)
      stack.push(result)
    end 
  end

  return stack.pop
end
