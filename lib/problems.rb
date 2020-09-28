require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  return false if string.length.odd?
  brackets = {"{" => "}", "[" => "]", "(" => ")"}
  bracket_stack = Stack.new
  # for each char, if bracket, push it into stack
  string.chars.each do |char|
    if brackets[char]
      bracket_stack.push(brackets[char])
    else # pop last item, see if it matches char, and if not return false
      if bracket_stack.pop != char
        return false
      end
    end
  end
  return bracket_stack.empty? # must be empty to return true
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
  # new stack
end
