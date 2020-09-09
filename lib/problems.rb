require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  return false if string.nil?

  string_stack = Stack.new
  string.each_char { |char|
    if char == '{' or char == '[' or char == '('
      # push if opening brace
      string_stack.push(char)
    else
      # pop opening brace and compare 
      # char to return true or false
      current_char = string_stack.pop()
      case current_char
      when '('
        return false if char != ')'
      when '{'
        return false if char != '}'
      when '['
        return false if char != ']'
      end
    end
  }

  # if stack has any characters, not balanced
  # so we return true
  string_stack.empty? ? true : false
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
