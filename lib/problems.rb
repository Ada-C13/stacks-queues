require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  return true if string.empty?

  stack = Stack.new
  openers = ["(", "[", "{"]
  closers = [")", "]", "}"]
  valid_pairs = {
    "(" => ")",
    "[" => "]",
    "{" => "}",
  }
  
  string.each_char do |char|
    if openers.include?(char) # char is opener
      stack.push(char) # put char on stack
    else # char is closer, check in hash for good pair
      popped = stack.pop
      return false if valid_pairs[popped] != char
    end
  end

  return true if stack.empty?
  return false
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
