require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  stack = Stack.new
  string_array = string.split('')
  pair_hash = { "}" => "{", "]" => "[", ")" => "(" }

  string_array.each do |char|
    if !pair_hash[char]
      stack.push(char)
    elsif stack.pop != pair_hash[char]
      return false
    end
  end

  return stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
