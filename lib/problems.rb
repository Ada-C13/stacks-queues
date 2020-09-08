require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  # {[{}{}]}, and {{}{}} are balanced expressions.
  # {()}[), and {(}) are not balanced

  return true if string == ''
  return false if string.length % 2 != 0
  return false if string =~ /[^\[\]\(\)\{\}]/
  pairs = { '{' => '}', '[' => ']', '(' => ')' }

  stack = Stack.new
  string.chars do |bracket|
    if pairs[bracket]
      stack.push(pairs[bracket])
    else
      return false if stack.pop != bracket
    end
  end
  stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
