require_relative 'stack.rb'

# Time Complexity: on
# Space Complexity: on
def balanced(string)
  pairs = {
    ')' => '(',
    '}' => '{',
    ']' => '['
  }

  stack = Stack.new

  string.split('').each do |char|
    !pairs[char] ? stack.push(char) : (return false if pairs[char] != stack.pop())
  end

  return stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)

end
