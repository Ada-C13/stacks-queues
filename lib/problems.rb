require_relative './stack.rb'

# Time Complexity: O(n) because it  goes through each item
# Space Complexity: could be up to o(n) because im building a stack.
def balanced(string)
  brackets = string.split('')
  open = []

  brackets.length.times do |i|
    if brackets[i] == "(" || brackets[i] == "[" || brackets[i] == "{"
      open.push(brackets[i])
    elsif brackets[i] == ")"
      if open.last == "("
        open.pop 
      else
        return false
      end
    elsif brackets[i] == "]"
      if open.last == "["
        open.pop 
      else
        return false
      end
    elsif brackets[i] == "}"
      if open.last == "{"
        open.pop 
      else
        return false
      end
    end
  end

  if open.length > 0
    return false
  end

  return true

end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
