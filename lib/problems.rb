require_relative './stack.rb'

# Time Complexity: O(n), will always have to traverse through the string
# Space Complexity: O(n), because in the worst case all char in string
# are opening brackets, best case would be O(1) where we push and pop every item
def balanced(string)
  return false if string.nil?

  string_stack = Stack.new

  # Traversal of string
  string.each_char { |char|
    # push to stack if the character is an opening brace
    if char == '{' or char == '[' or char == '('
      string_stack.push(char)
    else
      # pop brace from stack and compare 
      # char, return false if character doesn't match
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

  # if stack is empty, return true
  # else return false since it's unbalanced
  string_stack.empty? ? true : false
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
