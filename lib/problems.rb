require_relative './stack.rb'

# Time Complexity: O(n), where n is the length of the string
# Space Complexity: O(n)
def balanced(string)
  # base case: length of the expression must be even
    return false if string.length.odd?
  
  # create a new stack
    stack = Stack.new
  
  # loop through each char in the string
    string.each_char do |char|
      # if current char is an opening brace, push the corresponding closing brace to the stack.
      if char == "(" 
        stack.push(")")
      elsif char == "{"
        stack.push("}")
      elsif char == "["
        stack.push("]")
      # if current char is the same as the last inserted char on stack, remove last inserted char
      elsif !stack.empty? && stack.top == char
        stack.pop
      else # if stack is empty or last inserted char is not an opening brace
        return false
      end
    end
  
    # string is balanced only if stack is empty at this point
    return stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
