require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  array = string.split('')
  return false if array.length % 2 != 0

  stack = Stack.new
  array.each do |ele|
    stack.push(ele)
  end

  array.length.times do |i|
    remove = stack.pop
    case remove
    when '['
      return false if array[i] != ']'
    when ']'
      return false if array[i] != '['
    when '{'
      return false if array[i] != '}'
    when '}'
      return false if array[i] != '{'
    when '('
      return false if array[i] != ')'
    when ')'
      return false if array[i] != '('
    end
  end
  return true
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
