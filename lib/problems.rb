require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  return true if string == ""
  
  pairs = {
    "}" => "{",
    ")" => "(",
    "]" => "["
  }

  trapper_keeper = Stack.new

  string.each_char do |char|
    if pairs.values.include?(char)
      trapper_keeper.push(char)
    else
      last_in = trapper_keeper.pop
      return false if last_in != pairs[char]
    end
  end

  return true if trapper_keeper.empty?
  return false
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
