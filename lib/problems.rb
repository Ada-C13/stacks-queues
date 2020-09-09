require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  strStack = Stack.new
  opens_and_closes = {
    "}" => "{", 
    ")" => "(", 
    "]" => "["
  }
  string.each_char do |char|
    if ['(', '[', '{'].include?(char)
      strStack.push(char)
    else
      element = strStack.pop 

      if opens_and_closes[char] != element
        return false
      end
    end
  end
  
  
  return strStack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
