require_relative 'stack'

# Time Complexity: O(N)
# Space Complexity: O(N)
def balanced(string)
  strStack = Stack.new
  string.each_char do |char|
    if ['(', '[', '{'].include?(char)
      strStack.push(char)
    else
      element = strStack.pop 
      if char == ']' && element != '['
        return false
      elsif char == ')' && element != '('
        return false
      elsif char == '}' && element != '{'
        return false  
      end
    end
  end
  
  
  return strStack.empty?
end

# Time Complexity: O(N)
# Space Complexity: O(N)
def evaluate_postfix(postfix_expression)
  postfix_stack = Stack.new

  postfix_expression.each_char do |char|        
    if numeric?(char)
      postfix_stack.push(char.to_i)
    else

      num2 = postfix_stack.pop       
      num1 = postfix_stack.pop

      case char
      when "+"   
          answer = num1 + num2        
      when "*"       
          answer = num1* num2    
      when "-"        
          answer = num1- num2     
      when "/"        
          answer = num1/ num2    
      end   

      if answer== nil
        postfix_stack.push(num2)
        postfix_stack.push(num1)
      else
        postfix_stack.push(answer)
        answer = nil
      end
    end
  end

  return postfix_stack.pop

end

def numeric?(char)
  char =~ /[[:digit:]]/
end
