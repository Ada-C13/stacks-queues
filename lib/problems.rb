require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  stack = Stack.new
  string.each_char do |char|
    if char == "(" || char == "{" || char == "["
      stack.push(char)
    else
      if stack.empty?
        return false 
      else
        last = stack.pop
        if char == ")"
          return false if last != "("
        elsif char == "}"
          return false if last != "{"
        elsif char == "]"
          return false if last != "["
        end
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
