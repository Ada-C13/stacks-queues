require_relative './stack.rb'
# time complexity: 0(n) where n is the legth
# space complexity: 0(n) - creates a new stack
def balanced(string)
  return false if string.length.odd?

# create hash for quick look up
  brackets = {
                "(" => ")", "{" => "}", "[" => "]"
              }
  stack = Stack.new

  string.chars.each do |char|
    if brackets[char]
      element = brackets[char]
      stack.push(element)
    else
      if stack.pop != char
        return false
      end
    end
  end
  return stack.empty?
end

# Time Complexity: 0(n) where n is the length
# Space Complexity: 0(n)
# def balanced(string)
#   # string length must be even
#     return false if string.length.odd?
  
#     stack = Stack.new
  
#     # loop through each char in the string
#     string.each_char do |char|
#       if char == "[" 
#         stack.push("]")
#       elsif char == "{"
#         stack.push("}")
#       elsif char == "("
#         stack.push(")")
#       # if current char is the same as the last inserted char on stack, remove last inserted char
#       elsif !stack.empty? && stack.top == char
#         stack.pop
#       # if stack is empty or last char is not 'opening' pair
#       else 
#         return false
#       end
#     end
#     # finally if you get here and stack is empty - string is balanced
#     return stack.empty?
# end


# Time Complexity: ?
# Space Complexity: ?
# optional wave 4
def evaluate_postfix(postfix_expression) 
    raise NotImplementedError, "Not implemented yet"

end
