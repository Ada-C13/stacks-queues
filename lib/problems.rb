require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  return false if string.length.odd?

  open_parens = Stack.new
  string.each_char do |paren|
    if paren == "{" || paren == "[" || paren == "("
      open_parens.push(paren)
    elsif paren == "}"
      last = open_parens.pop
      return false if last != "{"
    elsif paren == "]"
      last = open_parens.pop
      return false if last != "["
    elsif paren == ")"
      last = open_parens.pop
      return false if last != "("
    end
  end
  return true
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
