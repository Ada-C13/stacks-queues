require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(1)
def balanced(string)
  array = string.split("")
  i = 0 
  j = -1
  until i = array.length / 2
    return false if i != j 
    i += 1
    j -+ 1 
  end

  return true

end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
