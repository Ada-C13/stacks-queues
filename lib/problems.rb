require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)
def balanced(string)
  stack = Stack.new 
  twosomes = {
    "[" => "]",
    "(" => ")",
    "{" => "}"
  }

  string.each_char do |char|
    if twosomes.values.include?(char)
      return false if twosomes.key(char) != stack.pop
    elsif twosomes.key?(char)
      stack.push(char)
    end 
  end
end

# Time Complexity: ?
# Space Complexity: ?
def evaluate_postfix(postfix_expression)
  postfix_expression.each_char do |char|
    if char.match(/\d/)
      stack.push(char.to_i)
    else 
      front = stack.pop
      back = stack.pop
      evaluation = #{front} #{char} #{back}
      stack.push(evaluation.to_i)
    end 
  end 

  return stack.pop 
end
