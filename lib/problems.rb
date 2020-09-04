require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  pairs = {"{" => "}", "[" => "]" , "(" => ")"}
  arr = string.split('')
  if arr.length % 2 != 0 
    return false
  end 
  
  stack = Stack.new
  n = arr.length
  n.times do |i|
    if arr[i] == "[" || arr[i] == "{" || arr[i] == "("
      stack.push(arr[i])
    else
      top = stack.pop
      if arr[i] != pairs["#{top}"]
        return false 
      end 
    end 
  end 
  return stack.empty?
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
