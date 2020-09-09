require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  return false if string.length.odd?
  pairs = {
    "{" => "}",
    "(" => ")",
    "[" => "]"
  }
  stack = Stack.new

  string.each_char do |char|
    if pairs[char]
      stack.push(char)
    else
      if char != pairs[stack.pop]
        return false
      end 
    end
  end

  return stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
