require_relative './stack.rb'

# Time Complexity: O(n) - length of the string
# Space Complexity: O(n) - # of opening brackets

# Given a string containing opening and closing braces, check if it represents a balanced expression or not.
def balanced(string)
  stack = Stack.new
  opening = ["(", "[", "{"]

  string.each_char do |char|
    # if character is an opening bracket
    if opening.include?(char)
      # push to stack
      stack.push(char)
    # if not
    else
      # pop the top character from the stack
      top_stack = stack.pop
      if char == ')'
        return false if top_stack != '('
      elsif char == ']'
        return false if top_stack != '['
      elsif char == '}'
        return false if top_stack != '{'
        # if the current character is a closing bracket
          # return false if the top stack character is not a matching open
      end
    end
  
  
  end

  # return true if the stack is empty, false if not
  return stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
