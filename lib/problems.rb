require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  return false if string.length.odd?
  stack = []
  brackets = { '{' => '}', '[' => ']', '(' => ')' }

  string.each_char do |char|
    if brackets.key?(char)
      stack.push(char)
    elsif brackets.values.include?(char)
      return false if brackets.key(char) != stack.pop
    end
  end

  if stack.empty?
    return true 
  end 
end

# # Time Complexity: ?
# # Space Complexity: ?
# def evaluate_postfix(postfix_expression)
#   raise NotImplementedError, "Not implemented yet"
# end
