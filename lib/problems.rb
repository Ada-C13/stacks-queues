require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  stack = Stack.new
  expressions = string.split('')
  i = 0
  while i < expressions.length
    if (expressions[i] == "(" || expressions[i] == "{" || expressions[i] == "[")
      stack.push(expressions[i])
    elsif (expressions[i] == ")" || expressions[i] == "}" || expressions[i] == "]")
      value = stack.pop
      case expressions[i]
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
