require_relative "./stack.rb"

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  braces_stack = Stack.new

  hash_bra = {
    ")" => "(",
    "]" => "[",
    "}" => "{",
  }

  string.each_char do |brace|
    if !hash_bra[brace]
      braces_stack.push(brace)
    elsif braces_stack.pop != hash_bra[brace]
      return false
    end
  end

  return braces_stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
