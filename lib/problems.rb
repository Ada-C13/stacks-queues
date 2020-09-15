require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  return false if string.length % 2 != 0
  
  struct = Stack.new
  left_half = ["(", "[", "{"]
  right_half = [")", "]", "}"]

  left = 0
  right = string.length - 1
  until left >= right
    index = left_half.find_index { |el| el == string[left] }

    if !index.nil? && string[right] != right_half[index]
      return false if string[left + 1] != right_half[index]
    end
    
    left += 1
    right -= 1
  end

  true
end

# Time Complexity: ?
# Space Complexity: ?
# def evaluate_postfix(postfix_expression)
#   raise NotImplementedError, "Not implemented yet"
# end
