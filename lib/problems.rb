require_relative './stack.rb'

# Time Complexity: O(n) - goes through all input elements
# Space Complexity: O(n) - stack will take at least half of symbols in string
def balanced(string)
  return true if string.length == 0

  pairs = {"(" => ")", "{" => "}", "[" => "]"}
  expectations = Stack.new
  string.chars.each do |char|
    if pairs[char]
      expected_element = pairs[char]
      expectations.push(expected_element)
    else
      if expectations.pop != char
        return false
      end
    end
  end
  return expectations.empty?
end

# Time Complexity: O(n) - goes through all input elements
# Space Complexity: O(1) - stack will never have more than 2 elements
def evaluate_postfix(postfix_expression)
  operands = Stack.new
  postfix_expression.chars.each do |element|
    if element.to_i.to_s == element
      operands.push(element.to_i)
    else
      num2 = operands.pop
      num1 = operands.pop
      case element
      when "+"   
        answer = num1 + num2        
      when "*"       
        answer = num1 * num2    
      when "-"        
        answer = num1 - num2     
      when "/"        
        answer = num1 / num2    
      end
      operands.push(answer)
    end
  end
  result = operands.pop
  if operands.empty?
    return result
  else
    raise Exception.new "Expression is not valid"
  end
end