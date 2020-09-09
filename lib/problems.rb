require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
# reference https://www.youtube.com/watch?v=0OJdfXyuapc
def balanced(string)
  stack = Stack.new
  parens = string.split('')
  i = 0

  while i < parens.length
    if (parens[i] == "(" || parens[i] == "{" || parens[i] == "[")
      stack.push(parens[i])
    elsif (parens[i] == ")" || parens[i] == "}" || parens[i] == "]")
      value = stack.pop
      
      case parens[i]
      when ")"
        if (value == "{" || value == "[")
          return false
        end
      when "}"
        if (value == "(" || value == "[")
          return false
        end
      when "]"
        if (value == "(" || value == "{")
          return false
        end
      end
    end
    i += 1
  end
  return true if stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
