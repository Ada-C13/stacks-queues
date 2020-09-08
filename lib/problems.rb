require_relative './stack.rb'
require_relative './queue.rb'

# Time Complexity: O(n) - n is length of the string
# Space Complexity: O(1)
def balanced(string)
  return true if string.empty?
  
  stack = Stack.new
  openers = ["(", "[", "{"]
  valid_pairs = {
    "(" => ")",
    "[" => "]",
    "{" => "}",
  }
  
  string.each_char do |char|
    if openers.include?(char) # char is opener
      stack.push(char) # put char on stack
    else # char is closer, check in hash for good pair
      popped = stack.pop
      return false if valid_pairs[popped] != char
    end
  end
  
  return true if stack.empty?
  return false
end

# Time Complexity: O(n) - n is the length of the expression
# Space Complexity: O(1)
def evaluate_postfix(postfix_expression)
  ops = ["+", "-", "*", "/"]
  stack = Stack.new
  
  postfix_expression.each_char do |char|
    if !(ops.include?(char))
      stack.push(char)
    else
        num2 = stack.pop
        num1 = stack.pop
        expression = "#{num1} #{char} #{num2}"
        stack.push(eval(expression))
    end
  end
  return stack.pop
end