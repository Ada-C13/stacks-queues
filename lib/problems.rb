require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
 
  opening_brackets = Stack.new
  string.each_chars do |char|
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
  return true
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
