require_relative './stack.rb'

# Time Complexity: O(n)
# # Space Complexity: O(n)
# def balanced(string)
#   opening_brackets = Stack.new
#   # string.each_char do |char|
#   #   # if an opening bracket, push it into the opening_brackets
#   #   if char == '{' || char == '(' || char == '['
#   #     opening_brackets.push(char)
#   #   else

#       # compare if the last opening bracket matches with the current closing bracket in char
#       opening_bracket = opening_brackets.pop()
#         if matching_braces == '}' && opening_bracket != '{'
#           return false
#         elsif matching_braces == ')' && opening_bracket != '('
#           return false
#         elsif matching_braces == ']' && opening_bracket != '['
#           return false
#         end

#   # if everything matches/closes, then we have a balanced brackets
#   return opening_brackets.empty?
# end

# 1. iterate through the string s
# 2. if it is opening bracket, push to stack
# 3. if it is a closing bracket, pop from stack and assign it to a variable p
# 4. From the hash, use the character you just popped as a key to find a value and assign it to ava.
# 5. Compare the value you got from the hash vs the string you got from the input.


def balanced(string)
  matching_hash = {
    "{" => "}",
    "(" => ")",
    "[" => "]",
  }
  matching_stacks = Stack.new

  string.each_char do |char|
    if matching_hash.has_key? char
      matching_stacks.push(char)
    elsif matching_hash.has_value? char
      closing_brace = matching_hash[matching_stacks.pop()]
      return false if closing_brace != char
    end
  end
  return matching_stacks.empty?
end



# Time Complexity: O(n)
# Space Complexity: O(n)
def evaluate_postfix(postfix_expression)

 operands = Stack.new
 postfix_expression.each_char do |char|
    if char != '+' &&  char != '*' && char != '-' &&  char != '/'
      operands.push(char)
    else  # if not pop 2 values
      y = operands.pop.to_i
      x = operands.pop.to_i
      result = 0

      if char == '+'
        result = x + y
      elsif char == '*'
        result = x * y
      elsif char == '-'
        result = x - y
      elsif char == '/'
        result = x / y
      end

      operands.push(result)
    end
  end
  return operands.pop
end

