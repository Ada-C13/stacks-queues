require_relative './stack.rb'
require_relative './queue.rb'
require 'set'

# Time Complexity: O(n), where n is the number of chars in the string
# Space Complexity: O(n), where n is the number of openers in the string
def balanced(string)
  open_close_matches = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }

  openers = open_close_matches.keys.to_set
  closers = open_close_matches.values.to_set
  openers_stack = Stack.new

  string.each_char do |char|
    if openers.include?(char)
      openers_stack.push(char)
    elsif closers.include?(char)
      if openers_stack.empty?
        return false
      else
        most_recent_opener = openers_stack.pop
        return false if char != open_close_matches[most_recent_opener]
      end
    else
      # char not allowed - not an opener or closer
      return false
    end
  end

  return openers_stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end

# puts balanced("{()}")
