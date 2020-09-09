require_relative './stack.rb'

# Time Complexity: O(n) - looping through string once
# Space Complexity: O(n) - auxiliary array & .chars method (.chars is unnecessary)
def balanced(string)
  brace_types = {
    ")" => "(",
    "]" => "[",
    "}" => "{"
  }

  temp = []

  string.chars.each do |brace|
    if brace_types[brace]
      if brace_types[brace] == temp.last 
        temp.pop
      else
        return false
      end
    else
      temp << brace
    end
  end

  return temp.empty? ? true : false
end

# Time Complexity: O(n) - looping through expression once
# Space Complexity: O(n) - auxiliary stack
def evaluate_postfix(postfix_expression)
  stack = Stack.new
  
  i = 0
  while i < postfix_expression.length
    if postfix_expression[i].match(/[0-9]/)
      stack.push(postfix_expression[i].to_i)
    else
      case postfix_expression[i]
      when "+"
        num_2 = stack.pop
        num_1 = stack.pop
        stack.push(num_1 + num_2)
      when "-"
        num_2 = stack.pop
        num_1 = stack.pop
        stack.push(num_1 - num_2)
      when "*"
        num_2 = stack.pop
        num_1 = stack.pop
        stack.push(num_1 * num_2)
      when "/"
        num_2 = stack.pop
        num_1 = stack.pop
        stack.push(num_1 / num_2)
      end
    end
    i += 1
  end
  return stack.pop
end
