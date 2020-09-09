require_relative './stack.rb'

# Time Complexity: ?
# Space Complexity: ?
def balanced(string)
  # raise NotImplementedError, "Not implemented yet"
  #create new stack array
  stack_1 = Stack.new
  #loop thorugh each character in the string
  string.each_char do |char|
    #if char is a {, [, or (, then push to stack array
    if char == "{" || char == "[" || char == "("
      stack_1.push(char)
    end
    #check if stack is not empty
    #then check if the char is an {}
    #then check use peek to see what's at the end of the array
      #if it's a {, then pop it
    if !stack_1.empty?
      #check for {}
      if char == "{"
        if stack_1.peek == "}"
          stack_1.pop
        else
          return false
      end
    end

    #same check for []
    if char == "["
      if stack_1.peek == "]"
        stack_1.pop
      else
        return false
      end
    end
    #same check for ()
    if char == "("
      if stack_1.peek == ")"
        stack_1.pop
      else
        return false
      end
    end
  end
end #end class

#check if stack array is empty, if it is,then return true
  if stack_1.empty?
    return true
  end
    return false
  end

# Time Complexity: ?
# Space Complexity: ?
#got help from the principal eng at hs
#kris said: you have to set your operands
#then pretend you have the postfix_expression like 13-10 +8/15 * 3
#when operands are found, push to stack (also create the stack first)
#when operator is found. two items are popped from stack
  #should probably create a helper function for the two items being popped
#then something like pemdas happens
#push the result back into stack for future use
#final result lives at the top of the stack
#think of it at jenga pieces moving to the top ..or something...

#operands here
operands = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9 }
#helper function here
#when you pop, make sure to set it to int
def pop_two_jenga_pieces
  value1 = jenga_stack.pop.to_i
  value2 = jenga_stack.pop.to_i
  return value1, value2
end

def evaluate_postfix(postfix_expression)
  # raise NotImplementedError, "Not implemented yet"
  #create the stack first
  jenga_stack = Stack.new

  #loop through the expression
  postfix_expression.each_char do |char|
  #check if operands are included
  if operands.include?(char)
    jenga_stack.push(char)
  end

  #check if the operand is a +
  if char == "+"
    value1, value2 = pop_two_jenga_pieces(jenga_stack)
    jenga_stack.push(value2 + value1)
  end

  #check if the operand is a -
  if char == "+"
    value1, value2 = pop_two_jenga_pieces(jenga_stack)
    jenga_stack.push(value2 - value1)
  end

  #check if the operand is a *
  if char == "+"
    value1, value2 = pop_two_jenga_pieces(jenga_stack)
    jenga_stack.push(value2 * value1)
  end

  #check if the operand is a /
  if char == "+"
    value1, value2 = pop_two_jenga_pieces(jenga_stack)
    jenga_stack.push(value2 / value1)
  end
  #return the top jenga piece
  return jenga_stack.pop
  end #end of do loop
end #end of function
