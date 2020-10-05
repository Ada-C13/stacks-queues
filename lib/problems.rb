require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  return false if string.length % 2 != 0
 hash = {")"=>"(", "]"=>"[", "}"=>"{"}
 stack = Stack.new

 string.split("").each do |char|
  stack.push(char) if !hash[char]
  if hash[char] 
   removed = stack.pop
   return false if hash[char] != removed
  end
 end
return stack.empty?

end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  stack = Stack.new
  postfix_expression.split("").each do |char|
    if char == "+" 
      poppednum1 = stack.pop
      poppednum2 = stack.pop
      addednum = poppednum1 + poppednum2
      stack.push(addednum)
    elsif char == "-" 
        poppednum1 = stack.pop
        poppednum2 = stack.pop
        subtractednum = poppednum2 - poppednum1
        stack.push(subtractednum)
    elsif char == "*" 
        poppednum1 = stack.pop
        poppednum2 = stack.pop
        multiplieddnum = poppednum1 * poppednum2
        stack.push(multiplieddnum)
    elsif char == "/" 
        poppednum1 = stack.pop
        poppednum2 = stack.pop
        dividednum = poppednum2/poppednum1
        stack.push(dividednum)
    else 
      stack.push(char.to_i)
    end
  end
  return stack.pop
end

