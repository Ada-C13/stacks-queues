require_relative './stack.rb'
require 'set'

# Time Complexity: O(n), where n is the number of chars in the string
# Space Complexity: O(n), where n is the number of openers in the string
def balanced(string)
  open_close_matches = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }

  openers = open_close_matches.keys.to_set
  closers = open_close_matches.values.to_set
  openers_stack = Stack.new

  string.each_char do |char|
    if openers.include?(char)
      openers_stack.push(char)
    elsif closers.include?(char)
      if openers_stack.empty?
        return false
      else
        most_recent_opener = openers_stack.pop
        return false if char != open_close_matches[most_recent_opener]
      end
    else
      # char not allowed - not an opener or closer
      return false
    end
  end

  return openers_stack.empty?
end

def valid_operator(char)
  return ["+", "-", "*", "/"].include?(char)
end

def calculate(operand1, operand2, operator)
  case operator
  when "+"
    return operand1 + operand2
  when "-"
    return operand1 - operand2
  when "*"
    return operand1 * operand2
  when "/"
    return operand1 / operand2
  else
    raise ArgumentError, "Not a valid operator"
  end
end

# Time Complexity: O(n), where n is the number of chars to evaluate in the postfix expression
# Space Complexity: O(n), where n is the number of chars in the postfix expression
def evaluate_postfix(postfix_expression)
  exp_array = postfix_expression.split('')

  stack = Stack.new
  stack.push(exp_array[0].to_i)
  stack.push(exp_array[1].to_i)

  index = 2
  while index <= exp_array.length - 1
    if valid_operator(exp_array[index])
      op2 = stack.pop
      op1 = stack.pop
      result = calculate(op1, op2, exp_array[index])
      stack.push(result)
    else
      stack.push(exp_array[index].to_i)
    end
    index += 1
  end

  return stack.pop
end
