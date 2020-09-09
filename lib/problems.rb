require_relative './stack.rb'

# Time Complexity: O(1)
# Space Complexity: O(1)

def balanced(string)
  braces = {
    '}' => '{',
    ']' => '[',
    ')' => '('
  }
  stack = Stack.new
  string.split("").each do |char|
    if !braces[char]
      stack.push(char)
    else
      if braces[char] != stack.pop()
        return false
      end
    end
  end
  if stack.empty?
    return true 
  else
    return false
  end
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
