require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n) worst case
def balanced(string)
  return true if string.empty?

  stack = Stack.new
  brackets = {
    ']' => '[',
    '}' => '{',
    ')' => '('
  }

  string.each_char do |bracket|
    bracket_end = brackets[bracket]
    if bracket_end
      return false if stack.pop != bracket_end
    else
      stack.push(bracket)
    end
  end

  stack.empty? ? (return true) : (return false)
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
