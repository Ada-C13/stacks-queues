require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(str)
  open_braces  = ["(", "[", "{"]
  close_braces = [")", "]", "}"]
  braces = Stack.new
  i = 0
  while i < str.length
    braces.push(str[i]) if open_braces.include?(str[i]) 

    if close_braces.include?(str[i])
      top = braces.pop
      if open_braces.index(top) != close_braces.index(str[i])
        return false
      end
    end
    i += 1
  end
  return braces.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(str)
  calc = Stack.new
  i = 0
  while i < str.length
    case str[i]
    when "+"
      calc.push (calc.pop + calc.pop)
    when "-"
      value1 = calc.pop
      value2 = calc.pop
      calc.push (value2 - value1)
    when "*"
      calc.push (calc.pop * calc.pop)
    when "/"
      value1 = calc.pop
      value2 = calc.pop
      calc.push (value2 / value1)
    else
      calc.push str[i].to_i
    end
    i += 1
  end
  return calc.pop
end
