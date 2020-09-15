require_relative './stack.rb'

# Time Complexity: 0(n) where n is the length
# Space Complexity: 0(n)
def balanced(string)
  # string length must be even
    return false if string.length.odd?
  
    stack = Stack.new
  
    # loop through each char in the string
    string.each_char do |char|
      if char == "[" 
        stack.push("]")
      elsif char == "{"
        stack.push("}")
      elsif char == "("
        stack.push(")")
      # if current char is the same as the last inserted char on stack, remove last inserted char
      elsif !stack.empty? && stack.top == char
        stack.pop
      # if stack is empty or last char is not 'opening' pair
      else 
        return false
      end
    end
    # finally if you get here and stack is empty - string is balanced
    return stack.empty?
end


# Time Complexity: ?
# Space Complexity: ?
# optional wave 4
def evaluate_postfix(postfix_expression)
  # stack = Stack.new()
  # len = postfix_expression
  # i = 0
  # while i < len do
  #   if postfix_expression[i].to_i == Integer
  #     stack.push(postfix_expression[i].to_i)
  #   else 
  #     pop_off_1 = stack.pop()
  #     pop_off_2 = stack.pop()
  #     if postfix_expression[i] == "+" 
  #       stack.push(pop_off_2 + pop_off_1)
  #     elsif postfix_expression[i] == "-" 
  #       stack.push(pop_off_2 - pop_off_1)
  #     elsif postfix_expression[i] == "*" 
  #       stack.push(pop_off_2 * pop_off_1)
  #     elsif postfix_expression[i] == "/" 
  #       stack.push(pop_off_2 / pop_off_1)
  #     end
  #   end
  #   return stack.top
  # end
    raise NotImplementedError, "Not implemented yet"

end
