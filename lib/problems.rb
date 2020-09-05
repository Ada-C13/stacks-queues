require_relative './stack.rb'

# Time Complexity: O(n) where n is the length of the string
# Space Complexity: O(n) for the extra stack, where n is the length of the string (or the number of open parens)
def balanced(string)
  return false if string.length % 2 != 0
  opening = ["(", "[", "{"]
  closing = [")", "]", "}"]
  stack = Stack.new

  i = 0
  while i < string.length
    parens = string[i]
    if opening.include?(parens)
      stack.push(parens)
    elsif closing.include?(parens)
      item = stack.pop
      return false if closing.index(parens) != opening.index(item)
    else
      return false
    end
    i += 1
  end

  return stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  operators = ["+", "-", "*", "/", "%"]
  operands = Stack.new
  # results = Stack.new

  i = 0
  while i < postfix_expression.length
    char = postfix_expression[i]
    if operators.include?(char)
      operator = char
      num2 = operands.pop
      num1 = operands.pop
      result = calculate_helper(operator, num1, num2)
      operands.push(result)
    else
      operands.push(char.to_i)
    end
    i += 1
  end
  
  ans = operands.pop
  # puts ans
  return ans
end

def calculate_helper(operator, num1, num2)
  case operator
  when "+"
    return num1 + num2
  when "-"
    return num1 - num2
  when "*"
    return num1 * num2
  when "/"
    return num1 / num2
  when "%"
    return num1 % num2
  end
end
