require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)

# Given a string containing opening and closing braces, check if it represents a balanced expression or not.
def balanced(string)
  stack = Stack.new
  string.each_char do |char|
    # if character is an opening bracket
      # push to stack
    # if not
      # pop the top character from the stack
        # if the current character is a closing bracket
          # return false if the top stack character is not a matching open

  # return true if the stack is empty, false if not
  end
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
