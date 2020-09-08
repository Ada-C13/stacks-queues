require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  stack = Stack.new

  pairs = {
    '[' => ']',
    '{' => '}',
    '(' => ')',
  }

  string.each_char do |char|
    if pairs.keys.include?(char)
      stack.push(char)
    else
      popped = stack.pop
      if char != pairs[popped]
        return false
      end
    end
  end

  return stack.empty? 
end

# Time Complexity: O(n)
# Space Complexity: O(n)
def evaluate_postfix(pfe)
  stack = Stack.new

  pfe.each_char do |char|
    if char.match(/\d/)
      stack.push(char.to_i)
    else
      first = stack.pop
      second = stack.pop
      result = eval "#{second} #{char} #{first}"
      stack.push(result.to_i)
    end
  end

  return stack.pop
end
