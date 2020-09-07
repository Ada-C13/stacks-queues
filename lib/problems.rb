require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  matching = {"{" => "}", "[" => "]", "("=>")"}

  record = Stack.new
  chars = string.split("")
  
  chars.each do |s|
    if matching.has_key?(s)
      record.push(s)
    else  
      check = record.pop
      if matching[check] != s 
        return false 
      end 
    end 
  
  end

  return false if !record.empty?
  return true 
end


# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  raise NotImplementedError, "Not implemented yet"
end
