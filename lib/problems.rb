require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  opening_brackets = Stack.new
  string.each_char do |char|
    # if an opening bracket, push it into the opening_brackets
    if char == '{' || char == '(' || char == '['
      opening_brackets.push(char)
    else
      # compare if the last opening bracket matches with the current closing bracket in char
      opening_bracket = opening_brackets.pop()
        if char == '}' && opening_bracket != '{'
          return false
        elsif char == ')' && opening_bracket != '('  
          return false
        elsif char == ']' && opening_bracket != '['
          return false
        end
    end
  end

  # if everything matches/closes, then we have a balanced brackets
  return opening_brackets.empty?
end


# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
 
 operands = Stack.new
 postfix_expression.each_char do |char|
    if char.is_a? Integer
      operands.push(char)
    else  # if not pop 2 values
      x = operands.pop.to_i
      y = operands.pop.to_i
      result = 0

      if char == '+' 
        result = x + y
      elsif char == '*'
        result = x * y
      elsif char == '-'
        result = x - y
      elsif char == '/'
        result = x / y    
      end

      operands.push(result)
    end
  end
end

